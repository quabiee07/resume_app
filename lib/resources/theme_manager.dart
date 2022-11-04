import 'package:flutter/material.dart';
import 'color_manager.dart';
import 'font_manager.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    primaryColor: ColorManager.primaryColor,
    brightness: Brightness.light,
    textTheme: TextTheme(
      headline1: getBlackStyle(
        fontSize: FontSize.s60,
        color: ColorManager.primaryColor,
      ),
      headline2: getSemiBoldStyle(
        fontSize: FontSize.s60,
        color: ColorManager.primaryColor,
      ),
    ),
  );

   static ThemeData darkTheme = ThemeData(
    primaryColor: ColorManager.primaryColor,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline1: getBlackStyle(
        fontSize: FontSize.s60,
        color: ColorManager.primaryColor,
      ),
      headline2: getSemiBoldStyle(
        fontSize: FontSize.s60,
        color: Colors.white,
      ),
    ),
  );
}
