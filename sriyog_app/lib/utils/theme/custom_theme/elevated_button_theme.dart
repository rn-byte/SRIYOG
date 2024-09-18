import 'package:flutter/material.dart';

class SpElevatedButtonTheme {
  static final lightElevatedTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.black),
      padding: const EdgeInsets.symmetric(vertical: 19),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
    ),
  );
  static final darkElevatedTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white),
          padding: const EdgeInsets.symmetric(vertical: 19),
          textStyle: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )));
}
