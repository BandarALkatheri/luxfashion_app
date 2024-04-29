import 'package:flutter/material.dart';
import 'package:luxfashion_app/utils/theme/custom_theme/appbar_theme.dart';
import 'package:luxfashion_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:luxfashion_app/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:luxfashion_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:luxfashion_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:luxfashion_app/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:luxfashion_app/utils/theme/custom_theme/text_filed_theme.dart';
import 'package:luxfashion_app/utils/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightThemeData = ThemeData(
    useMaterial3: true,
    //fontFamily:
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: BTextTheme.lightTextTheme,
    chipTheme: BChipTheme.lightChipTheme,
    appBarTheme: BAppBarTheme.lightAppBarTheme,
    checkboxTheme: BCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.ligtElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: BTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    //fontFamily:
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: BTextTheme.darkTextTheme,
    chipTheme: BChipTheme.darkChipTheme,
    appBarTheme: BAppBarTheme.darktAppBarTheme,
    checkboxTheme: BCheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: BBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: BElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: BTextFieldTheme.darktInputDecorationTheme,
  );
}
