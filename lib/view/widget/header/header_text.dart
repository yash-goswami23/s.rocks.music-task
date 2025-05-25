  
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_services_module/core/theme/app_colors.dart';
  Widget headerText() {
    return Column(
      children: [
        Text(
          "Claim your",
          style: GoogleFonts.syne(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "Free Demo",
          style: GoogleFonts.lobster(
            color: AppColors.white,
            fontSize: 45,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          "for custom Music Production",
          style: GoogleFonts.syne(
            color: AppColors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }