import 'package:bot_toast/bot_toast.dart';
import 'package:calda_app/config/app_themes.dart';
import 'package:calda_app/pages/game/setup_player_page.dart';
import 'package:calda_app/pages/home/home_page.dart';
import 'package:calda_app/pages/settings/settings_page.dart';
import 'package:calda_app/pages/signin/signin_page.dart';
import 'package:calda_app/pages/signup/signup_page.dart';
import 'package:calda_app/pages/splash_page.dart';
import 'package:calda_app/pages/welcome/welcome_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final userProvider = StateProvider<FirebaseUser>((ref) => null);

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: BotToastInit(),
      navigatorObservers: [BotToastNavigatorObserver()],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('ja', 'JP'),
      ],
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case SplashPage.routeName:
            return _buildPage(
              theme: WelcomeTheme(),
              page: SplashPage(),
            );
          case WelcomePage.routeName:
            return _buildPage(
              theme: WelcomeTheme(),
              page: WelcomePage(),
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
          case HomePage.routeName:
            return _buildPage(
              theme: HomeTheme(),
              page: HomePage(),
            );
          case SettingsPage.routeName:
            return _buildPage(
              theme: HomeTheme(),
              page: SettingsPage(),
            );
          case SetupPlayerPage.routeName:
            return _buildPage(
              theme: HomeTheme(),
              page: SetupPlayerPage(),
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
