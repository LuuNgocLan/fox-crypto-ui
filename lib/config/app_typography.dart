import 'package:flutter/material.dart';

class AppTypography {
  static const String poppinsRegular = "Poppins-Regular";
  static const String poppinsMedium = "Poppins-Medium";
  static const String poppinsSemiBold = "Poppins-SemiBold";
  static const String poppinsBold = "Poppins-Bold";
  AppTypography._();
  static const textTheme = TextTheme(
    displayLarge: TextStyle(
        fontSize: 36, fontFamily: poppinsSemiBold, color: Colors.white),
    displayMedium: TextStyle(
        fontSize: 27, fontFamily: poppinsSemiBold, color: Colors.black),
    displaySmall: TextStyle(
        fontSize: 8, fontWeight: FontWeight.w400, color: Colors.black),
    headlineLarge: TextStyle(
        fontSize: 36, fontWeight: FontWeight.w400, color: Colors.black),
    headlineMedium: TextStyle(
        fontSize: 34, fontWeight: FontWeight.w400, color: Colors.black),
    headlineSmall:
        TextStyle(fontSize: 16, fontFamily: poppinsMedium, color: Colors.black),
    titleLarge: TextStyle(
        fontSize: 27, fontFamily: poppinsSemiBold, color: Colors.black),
    titleMedium: TextStyle(
        fontSize: 20, fontFamily: poppinsSemiBold, color: Colors.white),
    titleSmall: TextStyle(
        fontSize: 18, fontFamily: poppinsSemiBold, color: Colors.white),
    bodyLarge: TextStyle(
        fontSize: 18, fontFamily: poppinsRegular, color: Colors.black87),
    bodyMedium: TextStyle(
        fontSize: 16, fontFamily: poppinsRegular, color: Colors.black87),
    bodySmall: TextStyle(
        fontSize: 13, fontFamily: poppinsRegular, color: Colors.black54),
    labelMedium: TextStyle(fontSize: 20, fontFamily: poppinsMedium),
  );
}
