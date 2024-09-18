import 'package:flutter/material.dart';
import 'package:sriyog_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:sriyog_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:sriyog_app/utils/theme/custom_theme/text_field_theme.dart';
import 'package:sriyog_app/utils/theme/custom_theme/text_theme.dart';

class SpAppTheme {
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.grey,
      scaffoldBackgroundColor: Colors.white,
      textTheme: SpTextTheme.lightTextTheme,
      elevatedButtonTheme: SpElevatedButtonTheme.lightElevatedTheme,
      outlinedButtonTheme: SpOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: SpTextFieldTheme.lightInputDecorationTheme);
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SpTextTheme.darkTextTheme,
    elevatedButtonTheme: SpElevatedButtonTheme.darkElevatedTheme,
    outlinedButtonTheme: SpOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: SpTextFieldTheme.darkInputDecorationTheme,
  );
}
