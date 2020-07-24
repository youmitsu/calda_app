import 'package:bot_toast/bot_toast.dart';
import 'package:calda_app/model/user.dart';
import 'package:calda_app/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userProvider = StateProvider<User>((ref) => User());

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      home: SplashPage(),
    );
  }
}
