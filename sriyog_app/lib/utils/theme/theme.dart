import 'package:flutter/material.dart';
import 'package:sriyog_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:sriyog_app/utils/theme/custom_theme/text_theme.dart';

class SrAppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SpTextTheme.lightTextTheme,
    elevatedButtonTheme: SpElevatedButtonTheme.lightElevatedTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.grey,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SpTextTheme.darkTextTheme,
    elevatedButtonTheme: SpElevatedButtonTheme.darkElevatedTheme,
  );
}
