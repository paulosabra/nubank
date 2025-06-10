import 'package:flutter/material.dart';
import 'package:nubank/core/themes/colors.dart';

abstract final class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.primary,
      onSecondary: AppColors.white,
      error: AppColors.negative,
      onError: AppColors.white,
      surface: AppColors.white,
      onSurface: AppColors.black,
    ),
  );
}
