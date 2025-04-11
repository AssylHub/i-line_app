import 'package:flutter/material.dart';
import 'package:iline_car_wash_app/core/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      surface: AppColors.background,
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onPrimary: AppColors.onPrimary,
      inverseSurface: AppColors.inverseBackground,
    ),
  );
}
