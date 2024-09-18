import 'package:flutter/material.dart';

class SpAppBarTheme {
  static final lightAppBarTheme = AppBarTheme(
      elevation: 1,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.grey[600],
      iconTheme: const IconThemeData(color: Colors.grey, size: 24),
      actionsIconTheme: const IconThemeData(color: Colors.grey, size: 24),
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ));
  static final darkAppBarTheme = AppBarTheme(
      elevation: 1,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.grey[600],
      iconTheme: const IconThemeData(color: Colors.grey, size: 24),
      actionsIconTheme: const IconThemeData(color: Colors.grey, size: 24),
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      ));
}
