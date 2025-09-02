import 'package:flutter/material.dart';

/// Custom color palette
class AppColors {
  static const Color gunmetal = Color(0xFF2C383E);
  static const Color paynesGray = Color(0xFF586F7C);
  static const Color lightBlue = Color(0xFFB8DBD9);
  static const Color azure = Color(0xFFD6E8E9);
  static const Color ghostWhite = Color(0xFFF4F4F9);
  static const Color darkSpringGreen = Color(0xFF04724D);
}

/// Custom app theme configuration
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        // Primary colors
        primary: AppColors.darkSpringGreen,
        onPrimary: AppColors.ghostWhite,
        primaryContainer: AppColors.lightBlue,
        onPrimaryContainer: AppColors.gunmetal,

        // Secondary colors
        secondary: AppColors.paynesGray,
        onSecondary: AppColors.ghostWhite,
        secondaryContainer: AppColors.azure,
        onSecondaryContainer: AppColors.gunmetal,

        // Surface colors
        surface: AppColors.ghostWhite,
        onSurface: AppColors.gunmetal,
        surfaceContainerHighest: AppColors.azure,

        // Error colors (keeping default but with our palette)
        error: Colors.red.shade700,
        onError: AppColors.ghostWhite,
      ),

      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkSpringGreen,
        foregroundColor: AppColors.ghostWhite,
        elevation: 2,
        shadowColor: AppColors.gunmetal.withValues(alpha: 0.3),
      ),

      // Card theme
      cardTheme: CardThemeData(
        color: AppColors.azure,
        shadowColor: AppColors.gunmetal.withValues(alpha: 0.2),
        elevation: 4,
      ),

      // Floating Action Button theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.darkSpringGreen,
        foregroundColor: AppColors.ghostWhite,
      ),

      // Text theme
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          color: AppColors.darkSpringGreen,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: AppColors.gunmetal),
        bodyMedium: TextStyle(color: AppColors.paynesGray),
      ),
    );
  }

  // You can add a dark theme here later if needed
  static ThemeData get darkTheme {
    // TODO: Implement dark theme variant
    return lightTheme;
  }
}
