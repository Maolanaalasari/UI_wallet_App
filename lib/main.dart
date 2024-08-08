// ignore_for_file: deprecated_member_use

import 'package:e_wallet_mobile_app/pages/screens/Onboarding/screens/onboarding_sceen.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget _getFirstPage() {
    return OnboardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.varelaRound().fontFamily,
        primaryColor: k_blue,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: k_black,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          displayMedium: TextStyle(
            color: k_black,
            fontSize: 15,
          ),
          displaySmall: TextStyle(
            color: k_fontGrey,
            fontSize: 12,
          ),
          bodyLarge: TextStyle(
            color: k_blue,
            fontSize: 12,
          ),
          bodyMedium: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 16,
          ),
          titleMedium: TextStyle(
            color: k_yellow,
            fontSize: 16,
          ),
        ),
        colorScheme: ColorScheme.light(
          primary: k_blue,
          background: Colors.white,
        ),
      ),
      home: _getFirstPage(),
    );
  }
}
