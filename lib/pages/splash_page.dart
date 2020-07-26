import 'package:calda_app/app/app.dart';
import 'package:calda_app/model/user.dart';
import 'package:calda_app/pages/welcome/welcome_page.dart';
import 'package:calda_app/repository/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final authenticateProvider = FutureProvider<User>(
  (ref) async {
    final _newUser =
        await GetIt.instance.get<AccountRepository>().authenticate();
    ref.read(userProvider).state = _newUser;
    return _newUser;
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
      return Container(); // TODO: HomePage
    }, loading: () {
      return Container();
    }, error: (error, stack) {
      return Container();
    });
  }
}
