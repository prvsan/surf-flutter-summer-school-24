import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/theme/app_colors.dart';

/// Темы приложения
abstract class AppThemes {
  /// Светлая тема.
  static ThemeData lightTheme = ThemeData(colorScheme: _lightScheme);

  /// Темная тема.
  static ThemeData darkTheme = ThemeData(colorScheme: _darkScheme);

  /// Белая цветовая схема.
  static const ColorScheme _lightScheme = ColorScheme(
    brightness: Brightness.light,
    primary: AppColors.white,
    onPrimary: AppColors.black,
    secondary: AppColors.electricBlue,
    onSecondary: AppColors.white,
    error: AppColors.cinnabar,
    onError: AppColors.white,
    surface: AppColors.white,
    onSurface: AppColors.raisinBlack,
    onSurfaceVariant: AppColors.spanishGray,
    surfaceBright: AppColors.darkGrayX11,
  );

  /// Темная цветовая схема.
  static const ColorScheme _darkScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: AppColors.raisinBlack,
    onPrimary: AppColors.white,
    secondary: AppColors.tealBlue,
    onSecondary: AppColors.white,
    error: AppColors.cinnabar,
    onError: AppColors.white,
    surface: AppColors.raisinBlack,
    onSurface: AppColors.spanishGray,
    onSurfaceVariant: AppColors.white,
    surfaceBright: AppColors.darkGrayX11,
  );
}
