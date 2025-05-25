import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_services_module/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    colorScheme: ColorScheme.dark(),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.textField,
      hintStyle: GoogleFonts.syne(
        color: AppColors.greyBlue,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    ),
    scaffoldBackgroundColor: AppColors.background,
  );
}
