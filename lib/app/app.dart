import 'package:bot_toast/bot_toast.dart';
import 'package:calda_app/config/app_themes.dart';
import 'package:calda_app/model/user.dart';
import 'package:calda_app/pages/signin/signin_page.dart';
import 'package:calda_app/pages/signup/signup_page.dart';
import 'package:calda_app/pages/splash_page.dart';
import 'package:calda_app/pages/welcome/welcome_page.dart';
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
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case WelcomePage.routeName:
            return _buildPage(
              theme: WelcomeTheme(),
              page: SplashPage(),
            );
          case SignUpPage.routeName:
            return _buildPage(
              theme: HomeTheme(),
              page: SignUpPage(),
            );
          case SignInPage.routeName:
            return _buildPage(
              theme: HomeTheme(),
              page: SignInPage(),
            );
          default:
            return MaterialPageRoute(
              builder: (context) {
                return Container();
              },
            );
        }
      },
    );
  }

  _buildPage({
    @required AppTheme theme,
    @required Widget page,
  }) {
    return MaterialPageRoute(builder: (context) {
      return Theme(
        data: Theme.of(context).brightness == Brightness.dark
            ? theme.darkTheme
            : theme.lightTheme,
        child: page,
      );
    });
  }
}
