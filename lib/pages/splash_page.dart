import 'package:calda_app/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

final authManager = AuthManager();

final userProvider = StateProvider<User>((ref) => User());

final authenticateProvider = FutureProvider<User>(
  (ref) async {
    final _newUser = await authManager.authenticate();
    ref.read(userProvider).state = _newUser;
    return _newUser;
  },
);

class SplashPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentUser = useProvider(userProvider);
    Logger()..d(currentUser.state);
    final userFuture = useProvider(authenticateProvider);
    return userFuture.when(data: (value) {
      return Container(
        color: Colors.green,
      );
    }, loading: () {
      return Container(
        color: Colors.blue,
      );
    }, error: (error, stack) {
      return Container(
        color: Colors.red,
      );
    });
  }
}

class AuthManager {
  Future<User> authenticate() async {
    await Future.delayed(Duration(milliseconds: 500));
    return User(uid: 'hogehoge');
  }
}
