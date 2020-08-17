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
          textTheme: commonThemeData.textTheme.copyWith(
            headline1: TextStyle(
              color: TextColor.black,
            ),
            headline2: TextStyle(
              color: TextColor.black,
            ),
            headline3: TextStyle(
              color: TextColor.white,
            ),
            headline4: TextStyle(
              color: TextColor.white,
            ),
            headline5: TextStyle(
              color: TextColor.grey111111,
            ),
            headline6: TextStyle(
              color: TextColor.grey333333,
            ),
            bodyText1: TextStyle(
              color: TextColor.grey666666,
            ),
            bodyText2: TextStyle(
              color: TextColor.grey999999,
            ),
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
          textTheme: commonThemeData.textTheme.copyWith(
            headline1: TextStyle(
              color: TextColor.white,
            ),
            headline2: TextStyle(
              color: TextColor.black,
            ),
            headline3: TextStyle(
              color: TextColor.black,
            ),
            headline4: TextStyle(
              color: TextColor.white,
            ),
            headline5: TextStyle(
              color: TextColor.white,
            ),
            headline6: TextStyle(
              color: TextColor.white,
            ),
            bodyText1: TextStyle(
              color: TextColor.grey999999,
            ),
            bodyText2: TextStyle(
              color: TextColor.grey999999,
            ),
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

extension TextThemeWrapper on TextTheme {
  TextStyle get light000000DarkFFFFFF => this.headline1;

  TextStyle get light000000Dark000000 => this.headline2;

  TextStyle get lightFFFFFFDark000000 => this.headline3;

  TextStyle get lightFFFFFFDarkFFFFFF => this.headline4;

  TextStyle get light111111DarkFFFFFF => this.headline5;

  TextStyle get light333333DarkFFFFFF => this.headline6;

  TextStyle get light666666Dark999999 => this.bodyText1;

  TextStyle get light999999Dark999999 => this.bodyText2;
}

extension TextStyleWrapper on TextStyle {
  TextStyle get fontSize30 => this.copyWith(
        fontSize: 30,
      );
  TextStyle get fontSize28 => this.copyWith(
        fontSize: 28,
      );
  TextStyle get fontSize24 => this.copyWith(
        fontSize: 24,
      );
  TextStyle get fontSize22 => this.copyWith(
        fontSize: 22,
      );
  TextStyle get fontSize20 => this.copyWith(
        fontSize: 20,
      );
  TextStyle get fontSize18 => this.copyWith(
        fontSize: 18,
      );
  TextStyle get fontSize16 => this.copyWith(
        fontSize: 16,
      );
  TextStyle get fontSize14 => this.copyWith(
        fontSize: 14,
      );
  TextStyle get fontSize12 => this.copyWith(
        fontSize: 12,
      );
  TextStyle get fontSize11 => this.copyWith(
        fontSize: 11,
      );
  TextStyle get fontSize10 => this.copyWith(
        fontSize: 10,
      );
}
