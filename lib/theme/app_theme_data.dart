import 'package:flutter/material.dart';

class AppColors {
  final Color backgroundColor;
  final Color primaryColor;
  final Color primaryLightColor;
  final Color secondaryColor;
  final Color secondaryLightColor;

  // rename later
  final Color greyLight0;
  final Color greyLight;
  final Color greyLight1;
  final Color greyLight2;
  final Color grey;
  final Color greyDark;
  final Color greyDark1;
  final Color greyDark2;
  final Color red;
  final Color redLight;
  final Color black;
  final Color green;
  final Color lightGreen;
  final Color darkGreen;
  // /

  const AppColors({
    this.backgroundColor = const Color(0xFFFFFFFF),
    this.primaryColor = const Color(0xFFFF6E30),
    this.primaryLightColor = const Color(0xFFFFF1EB),
    this.secondaryColor = const Color(0xFF2F776D),
    this.secondaryLightColor = const Color(0xFFE6F5F3),
    this.greyLight0 = const Color(0xFFF6F5F5),
    this.greyLight = const Color(0xFFD2D2D2),
    this.greyLight1 = const Color(0xFFB5B5B5),
    this.greyLight2 = const Color(0xFFAFAFAF),
    this.grey = const Color(0xFF626262),
    this.greyDark = const Color(0xFF3D3D3D),
    this.greyDark1 = const Color(0xFF252B26),
    this.greyDark2 = const Color(0xFF454545),
    this.red = const Color(0xFFF93559),
    this.redLight = const Color(0xFFFFECEC),
    this.black = const Color(0xFF1B1B1B),
    this.green = const Color(0xFF34C759),
    this.lightGreen = const Color(0xFFE6F5F3),
    this.darkGreen = const Color(0xFF6A9E97),
  });

  get primary => null;
}

class AppTextStyles {
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle heading4;
  final TextStyle heading5;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle caption1;
  final TextStyle caption2;

  const AppTextStyles({
    this.heading1 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 32,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41),
    this.heading2 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41),
    this.heading3 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41),
    this.heading4 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41),
    this.heading5 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41),
    this.body1 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.41),
    this.body2 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.41),
    this.caption1 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41),
    this.caption2 = const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41),
  });
}

class AppThemeData {
  final AppColors colors;
  final AppTextStyles text;

  const AppThemeData({
    this.colors = const AppColors(),
    this.text = const AppTextStyles(),
  });
}

const mainAppTheme = AppThemeData();

const darkAppTheme = AppThemeData(
  colors: AppColors(
    backgroundColor: Colors.black,
    primaryColor: Color(0xFFA33401),
    primaryLightColor: Color(0xFFEBA454),
    secondaryColor: Color(0xFF2B5BA7),
    secondaryLightColor: Color(0xFF92D2F3),
  ),
);
