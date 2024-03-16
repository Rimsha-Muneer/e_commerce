import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,

  );
  static ThemeData darkTheme = ThemeData();
}
