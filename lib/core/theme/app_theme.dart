import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // COLOR PALETTE
  static const Color background = Color(0xFF080C18);
  static const Color surface = Color(0xFF0F1525);
  static const Color surfaceVariant = Color(0xFF161D33);
  static const Color primary = Color(0xFF00E5FF);
  static const Color secondary = Color(0xFF00FF88);
  static const Color textPrimary = Color(0xFFE8EEFF);
  static const Color textSecondary = Color(0xFF8892B0);
  static const Color border = Color(0xFF1E2A45);

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: background,
      useMaterial3: true,
      colorScheme: const ColorScheme.dark(
        background: background,
        surface: surface,
        surfaceVariant: surfaceVariant,
        primary: primary,
        secondary: secondary,
        onBackground: textPrimary,
        onSurface: textPrimary,
        outline: border,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.rajdhani(color: textPrimary),
        displayMedium: GoogleFonts.rajdhani(color: textPrimary),
        displaySmall: GoogleFonts.rajdhani(color: textPrimary),
        headlineLarge: GoogleFonts.rajdhani(color: textPrimary),
        headlineMedium: GoogleFonts.rajdhani(color: textPrimary),
        headlineSmall: GoogleFonts.rajdhani(color: textPrimary),
        titleLarge: GoogleFonts.rajdhani(color: textPrimary),
        titleMedium: GoogleFonts.rajdhani(color: textPrimary),
        titleSmall: GoogleFonts.rajdhani(color: textPrimary),
        labelLarge: GoogleFonts.rajdhani(color: textPrimary),
        labelMedium: GoogleFonts.rajdhani(color: textPrimary),
        labelSmall: GoogleFonts.rajdhani(color: textPrimary),
        bodyLarge: GoogleFonts.inter(color: textPrimary),
        bodyMedium: GoogleFonts.inter(color: textPrimary),
        bodySmall: GoogleFonts.inter(color: textSecondary),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: GoogleFonts.rajdhani(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: primary,
        ),
      ),
      cardTheme: CardThemeData(
        color: surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
      ),
      dividerTheme: const DividerThemeData(color: border),
    );
  }
}
