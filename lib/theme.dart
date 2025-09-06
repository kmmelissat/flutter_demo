import 'package:flutter/material.dart';

/// Custom color palette - Pink, Light Blue, White & Cream
class AppColors {
  static const Color softPink = Color(0xFFFFB6C1); // Light pink
  static const Color rosePink = Color(0xFFF8BBD9); // Rose pink
  static const Color lightBlue = Color(0xFFADD8E6); // Light blue
  static const Color powderBlue = Color(0xFFB0E0E6); // Powder blue
  static const Color pureWhite = Color(0xFFFFFFFF); // Pure white
  static const Color cream = Color.fromARGB(255, 255, 254, 239); // Cream
  static const Color warmCream = Color.fromARGB(255, 255, 255, 220); // Warm cream (beige)
  static const Color darkPink = Color(0xFFDB7093); // Darker pink for contrast
}

/// Custom app theme configuration
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.light(
        // Primary colors
        primary: AppColors.darkPink,
        onPrimary: AppColors.pureWhite,
        primaryContainer: AppColors.rosePink,
        onPrimaryContainer: AppColors.darkPink,

        // Secondary colors
        secondary: AppColors.lightBlue,
        onSecondary: AppColors.pureWhite,
        secondaryContainer: AppColors.powderBlue,
        onSecondaryContainer: AppColors.darkPink,

        // Surface colors
        surface: AppColors.cream,
        onSurface: AppColors.darkPink,
        surfaceContainerHighest: AppColors.warmCream,

        // Error colors
        error: Colors.red.shade400,
        onError: AppColors.pureWhite,
      ),

      // AppBar theme
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkPink,
        foregroundColor: AppColors.pureWhite,
        elevation: 2,
        shadowColor: AppColors.darkPink.withValues(alpha: 0.3),
      ),

      // Card theme
      cardTheme: CardThemeData(
        color: AppColors.pureWhite,
        shadowColor: AppColors.lightBlue.withValues(alpha: 0.2),
        elevation: 4,
      ),

      // Floating Action Button theme
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.lightBlue,
        foregroundColor: AppColors.pureWhite,
      ),

      // Text theme
      textTheme: TextTheme(
        headlineMedium: TextStyle(
          color: AppColors.darkPink,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(color: AppColors.darkPink),
        bodyMedium: TextStyle(color: AppColors.lightBlue),
      ),
    );
  }

  // You can add a dark theme here later if needed
  static ThemeData get darkTheme {
    // TODO: Implement dark theme variant
    return lightTheme;
  }
}
