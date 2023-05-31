import 'package:flutter/material.dart';

@immutable
class AppTheme {
  static final lightTheme = ThemeData(
    fontFamily: 'Poppins',
    colorScheme: AppColorScheme.lightColorScheme,
    scaffoldBackgroundColor: AppColorScheme.lightColorScheme.background,
    textTheme: AppTextTheme.textTheme,
  );
}

@immutable
class AppColorScheme {
  static const lightColorScheme = ColorScheme.light(
    primary: AppColors.white,
    secondary: AppColors.black,
    tertiary: AppColors.grey,
    background: AppColors.white,
  );
}

@immutable
class AppTextTheme {
  static const textTheme = TextTheme(
    headlineMedium: TextStyle(
      fontSize: 34,
      color: AppColors.white,
      fontWeight: FontWeight.w800,
      letterSpacing: -1,
    ),
    headlineSmall: TextStyle(
      fontSize: 30,
      color: AppColors.white,
      fontWeight: FontWeight.w700,
      letterSpacing: -1,
    ),
    titleLarge: TextStyle(
      fontSize: 24,
      color: AppColors.black,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.6,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.4,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      color: AppColors.black,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.5,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.5,
      height: 1.34,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      color: AppColors.white,
      fontWeight: FontWeight.w600,
      letterSpacing: -0.5,
    ),
  );
}

@immutable
class AppColors {
  static const Color black = Color(0XFF000000);
  static const Color white = Color(0XFFFFFFFF);
  static const Color grey = Color(0XFFB7B7B7);
}
