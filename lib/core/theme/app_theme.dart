import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // DARK COLOR PALETTE (Premium OLED Black)
  static const Color darkBackground = Color(0xFF000000);
  static const Color darkSurface = Color(0xFF121212);
  static const Color darkSurfaceVariant = Color(0xFF1C1C1E);
  static const Color darkPrimary = Color(0xFF0A84FF); // Vibrant Electric Blue
  static const Color darkSecondary = Color(0xFF30D158); // Crisp Green
  static const Color darkTertiary = Color(0xFFFF9F0A); // Refined Amber
  static const Color darkTextPrimary = Color(0xFFFFFFFF);
  static const Color darkTextSecondary = Color(0xFFA1A1A6); // Subdued Apple-like Grey
  static const Color darkBorder = Color(0xFF38383A);

  // LIGHT COLOR PALETTE (Refined Light)
  static const Color lightBackground = Color(0xFFF2F2F7); // Soft off-white
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceVariant = Color(0xFFE5E5EA);
  static const Color lightPrimary = Color(0xFF007AFF); // Classic Blue
  static const Color lightSecondary = Color(0xFF34C759);
  static const Color lightTertiary = Color(0xFFFF9500);
  static const Color lightTextPrimary = Color(0xFF000000);
  static const Color lightTextSecondary = Color(0xFF8E8E93);
  static const Color lightBorder = Color(0xFFD1D1D6);

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: darkBackground,
      useMaterial3: true,
      colorScheme: const ColorScheme.dark(
        surface: darkSurface,
        surfaceContainerHighest: darkSurfaceVariant,
        primary: darkPrimary,
        secondary: darkSecondary,
        tertiary: darkTertiary,
        onSurface: darkTextPrimary,
        onSurfaceVariant: darkTextSecondary,
        outline: darkBorder,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.rajdhani(color: darkTextPrimary),
        displayMedium: GoogleFonts.rajdhani(color: darkTextPrimary),
        displaySmall: GoogleFonts.rajdhani(color: darkTextPrimary),
        headlineLarge: GoogleFonts.rajdhani(color: darkTextPrimary),
        headlineMedium: GoogleFonts.rajdhani(color: darkTextPrimary),
        headlineSmall: GoogleFonts.rajdhani(color: darkTextPrimary),
        titleLarge: GoogleFonts.rajdhani(color: darkTextPrimary),
        titleMedium: GoogleFonts.rajdhani(color: darkTextPrimary),
        titleSmall: GoogleFonts.rajdhani(color: darkTextPrimary),
        labelLarge: GoogleFonts.rajdhani(color: darkTextPrimary),
        labelMedium: GoogleFonts.rajdhani(color: darkTextPrimary),
        labelSmall: GoogleFonts.rajdhani(color: darkTextPrimary),
        bodyLarge: GoogleFonts.inter(color: darkTextPrimary),
        bodyMedium: GoogleFonts.inter(color: darkTextPrimary),
        bodySmall: GoogleFonts.inter(color: darkTextSecondary),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: GoogleFonts.rajdhani(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: darkPrimary,
        ),
        iconTheme: const IconThemeData(color: darkPrimary),
      ),
      cardTheme: CardThemeData(
        color: darkSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
      ),
      dividerTheme: const DividerThemeData(color: darkBorder),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: lightBackground,
      useMaterial3: true,
      colorScheme: const ColorScheme.light(
        surface: lightSurface,
        surfaceContainerHighest: lightSurfaceVariant,
        primary: lightPrimary,
        secondary: lightSecondary,
        tertiary: lightTertiary,
        onSurface: lightTextPrimary,
        onSurfaceVariant: lightTextSecondary,
        outline: lightBorder,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.rajdhani(color: lightTextPrimary),
        displayMedium: GoogleFonts.rajdhani(color: lightTextPrimary),
        displaySmall: GoogleFonts.rajdhani(color: lightTextPrimary),
        headlineLarge: GoogleFonts.rajdhani(color: lightTextPrimary),
        headlineMedium: GoogleFonts.rajdhani(color: lightTextPrimary),
        headlineSmall: GoogleFonts.rajdhani(color: lightTextPrimary),
        titleLarge: GoogleFonts.rajdhani(color: lightTextPrimary),
        titleMedium: GoogleFonts.rajdhani(color: lightTextPrimary),
        titleSmall: GoogleFonts.rajdhani(color: lightTextPrimary),
        labelLarge: GoogleFonts.rajdhani(color: lightTextPrimary),
        labelMedium: GoogleFonts.rajdhani(color: lightTextPrimary),
        labelSmall: GoogleFonts.rajdhani(color: lightTextPrimary),
        bodyLarge: GoogleFonts.inter(color: lightTextPrimary),
        bodyMedium: GoogleFonts.inter(color: lightTextPrimary),
        bodySmall: GoogleFonts.inter(color: lightTextSecondary),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: GoogleFonts.rajdhani(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: lightPrimary,
        ),
        iconTheme: const IconThemeData(color: lightPrimary),
      ),
      cardTheme: CardThemeData(
        color: lightSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
      ),
      dividerTheme: const DividerThemeData(color: lightBorder),
    );
  }
}
