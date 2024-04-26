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
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TcheckBoxTheme.LightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.ligtElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    //fontFamily:
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    appBarTheme: TAppBarTheme.darktAppBarTheme,
    checkboxTheme: TcheckBoxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFieldTheme.darktInputDecorationTheme,
  );
}
