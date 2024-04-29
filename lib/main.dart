import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luxfashion_app/features/authentication/screens/screens_onboarding/onboarding.dart';
import 'package:luxfashion_app/utils/theme/theme.dart';

void main() {
  //first
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkThemeData,
      theme: TAppTheme.lightThemeData,
      home: const OnboardingScreen(),
    );
  }
}
