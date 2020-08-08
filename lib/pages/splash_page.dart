import 'package:calda_app/pages/home/home_page.dart';
import 'package:calda_app/pages/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SplashPage extends HookWidget {
  static const String routeName = '/';

  @override
  Widget build(BuildContext context) {
    authenticate(context);
    return Container();
  }

  Future<void> authenticate(BuildContext context) async {
    final user = await FirebaseAuth.instance.currentUser();
    if (user == null) {
      Navigator.of(context).pushReplacementNamed(WelcomePage.routeName);
    } else {
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    }
  }
}
