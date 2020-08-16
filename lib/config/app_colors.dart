import 'package:flutter/material.dart';

/// Brightnessごとに色を変えたい際に使用する
///
/// Usage:
///   ```
///   1. 事前定義したButtonColorを使用したい場合
///     ColorBuilder.build(context, ButtonColor.grey)
///     => LightMode: ButtonColor.grey.light
///        DarkMode: ButtonColor.grey.dark
///
///   2. その場で設定する場合
///     ColorBuilder.build(context, AppColorStruct(light: AppColor.grey111111, dark: Colors.white))
///     => LightMode: AppColor.grey111111
///        DarkMode: AppColor.white
///   ```
///
class ColorBuilder {
  static Color build(BuildContext context, AppColorStruct appColorStruct) {
    return Theme.of(context).brightness == Brightness.dark
        ? appColorStruct.dark
        : appColorStruct.light;
  }
}

/// Brightnessで対応関係がある色の組み合わせのためのStruct
class AppColorStruct {
  final Color light;
  final Color dark;

  AppColorStruct({
    @required this.light,
    @required this.dark,
  });

  AppColorStruct.common(this.light) : dark = light;
}

class _AllColors {
  /// ホワイト~ブラック系
  static const Color white = Color(0xffffffff);
  static const Color greyF1F1F1 = Color(0xfff1f1f1);
  static const Color greyF2F2F2 = Color(0xfff2f2f2);
  static const Color greyF5F5F5 = Color(0xfff5f5f5);
  static const Color greyEEEEEE = Color(0xffEEEEEE);
  static const Color greyDDDDDD = Color(0xffdddddd);
  static const Color greyCCCCCC = Color(0xffcccccc);
  static const Color greyAAAAAA = Color(0xffaaaaaa);
  static const Color greya0a0a0 = Color(0xffa0a0a0);
  static const Color grey999999 = Color(0xff999999);
  static const Color grey666666 = Color(0xff666666);
  static const Color grey333333 = Color(0xff333333);
  static const Color grey111111 = Color(0xff111111);
  static const Color black0B0B0B = Color(0xff0b0b0b);
  static const Color black = Color(0xff000000);

  /// オレンジ
  static const Color orangeFFC289 = Color(0xffEF6C00);
}

/// ページ背景に使用するカラー
class BackgroundColor {
  static const Color light = _AllColors.greyF5F5F5;
  static const Color dark = _AllColors.black;
}

/// テキストに使用するカラー
class TextColor {
  /// ホワイト~ブラック系
  static const Color white = Color(0xffffffff);
  static const Color greyF1F1F1 = Color(0xfff1f1f1);
  static const Color greyF2F2F2 = Color(0xfff2f2f2);
  static const Color greyF5F5F5 = Color(0xfff5f5f5);
  static const Color greyEEEEEE = Color(0xffEEEEEE);
  static const Color greyDDDDDD = Color(0xffdddddd);
  static const Color greyCCCCCC = Color(0xffcccccc);
  static const Color greyAAAAAA = Color(0xffaaaaaa);
  static const Color greya0a0a0 = Color(0xffa0a0a0);
  static const Color grey999999 = Color(0xff999999);
  static const Color grey666666 = Color(0xff666666);
  static const Color grey333333 = Color(0xff333333);
  static const Color grey111111 = Color(0xff111111);
  static const Color black0B0B0B = Color(0xff0b0b0b);
  static const Color black = Color(0xff000000);
}

/// ボタンに使用するカラー
class ButtonColor {
  static const Color black = _AllColors.black;
  static const Color white = _AllColors.white;
  static const Color grey = _AllColors.grey111111;
  static const Color orange = _AllColors.orangeFFC289;
}
