import 'package:e_commerce_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme/bottom_sheet.dart';
import 'package:e_commerce_app/utils/theme/custom_theme/checkBox_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme/inputtextForm_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme/outlinedButton_theme.dart';
import 'package:e_commerce_app/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: AppAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: AppBottomSheet.lightBottomSheetTheme,
    checkboxTheme: AppCheckBoxes.lightCheckBoxTheme,
    chipTheme: AppChipTheme.lightChipTheme,
    inputDecorationTheme: AppInputTextFormFields.lightInputDecorationTheme,
    outlinedButtonTheme: AppOutlinedButton.lightOutlinedButtonTheme
  );
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: AppAppBarTheme.darkAppBartheme,
    bottomSheetTheme: AppBottomSheet.darkBottomSheetTheme,
    checkboxTheme: AppCheckBoxes.darkCheckBoxTheme,
    chipTheme: AppChipTheme.darkChipTheme,
    inputDecorationTheme: AppInputTextFormFields.darkInputDecorationTheme,
    outlinedButtonTheme: AppOutlinedButton.darkOutlinedButtonTheme


  );
}
