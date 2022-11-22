import 'package:flutter/material.dart';

ThemeData nov22ThemeData() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: Colors.purpleAccent,
    ),
    colorScheme: const ColorScheme.light(
      secondary: Colors.purpleAccent,
    ),
    primaryColor: Colors.purple,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 1.0,
        backgroundColor: Colors.grey,
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  );
}
