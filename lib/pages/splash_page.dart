import 'package:calda_app/app/app.dart';
import 'package:calda_app/model/user.dart';
import 'package:calda_app/repository/account_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

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
