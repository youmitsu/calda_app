import 'package:flutter/material.dart';

import 'app_colors.dart';

mixin AppTheme {
  ThemeData get lightTheme;

  ThemeData get darkTheme;
}

class BaseTheme with AppTheme {
  static final commonThemeData = ThemeData(
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 24,
      ),
      headline4: TextStyle(
        fontSize: 22,
      ),
      headline5: TextStyle(
        fontSize: 20,
      ),
      headline6: TextStyle(
        fontSize: 18,
      ),
      subtitle1: TextStyle(
        fontSize: 16,
      ),
      subtitle2: TextStyle(
        fontSize: 14,
      ),
      bodyText1: TextStyle(
        fontSize: 12,
      ),
      bodyText2: TextStyle(
        fontSize: 11,
      ),
      caption: TextStyle(
        fontSize: 10,
      ),
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ButtonColor.orange,
    ),
    buttonColor: ButtonColor.orange,
    disabledColor: ButtonColor.grey,
  );

  @override
  ThemeData get darkTheme => commonThemeData.copyWith(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: ButtonColor.white,
          ),
          actionsIconTheme: IconThemeData(
            color: ButtonColor.white,
          ),
        ),
      );

  @override
  ThemeData get lightTheme => commonThemeData.copyWith(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(
            color: ButtonColor.black,
          ),
          actionsIconTheme: IconThemeData(
            color: ButtonColor.black,
          ),
        ),
      );
}

class WelcomeTheme extends BaseTheme {
  @override
  ThemeData get darkTheme => super.darkTheme.copyWith(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
        ),
      );

  @override
  ThemeData get lightTheme => super.lightTheme.copyWith(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
        ),
      );
}

class HomeTheme extends BaseTheme {
  @override
  ThemeData get darkTheme => super.darkTheme.copyWith(
        scaffoldBackgroundColor: BackgroundColor.dark,
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: Colors.transparent,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Colors.white,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          textTheme: super.darkTheme.textTheme,
        ),
      );

  @override
  ThemeData get lightTheme => super.lightTheme.copyWith(
        scaffoldBackgroundColor: BackgroundColor.light,
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Colors.transparent,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          textTheme: super.lightTheme.textTheme,
        ),
      );
}
