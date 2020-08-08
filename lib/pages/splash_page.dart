import 'package:calda_app/app/app.dart';
import 'package:calda_app/pages/home/home_page.dart';
import 'package:calda_app/pages/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authenticateProvider = FutureProvider<FirebaseUser>(
  (ref) async {
    final user = await FirebaseAuth.instance.currentUser();
    ref.read(userProvider).state = user;
    return user;
  },
);

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final userFuture = useProvider(authenticateProvider);
    return userFuture.when(data: (value) {
      if (value == null) {
        return WelcomePage();
      }
      return HomePage();
    }, loading: () {
      return Container();
    }, error: (error, stack) {
      return Container();
    });
  }
}
