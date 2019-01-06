import 'package:flutter/material.dart';

class AppColors {
  static const AppPrimaryColor = Color(0xfff1f1f1);
  static const AppTitleColor = Colors.black;
  static const AppSplashColor = Colors.black12;
  static const AppIconNormalColor = Colors.black54;
  static const AppIconActivateColor = Colors.black87;
  static const AppIconPraiseColor = Colors.pink; // Color(0xffdd6572)
}

class AppStyle {
  static const AppTitleStyle = TextStyle(
      fontFamily: Constans.AppTextFontFamily,
      fontSize: 24.0,
      color: AppColors.AppTitleColor);
}

class Constans {
  static const AppTextFontFamily = 'bw_text_font';
  static const AppIconFontFamily = 'bw_icon_font';
}
