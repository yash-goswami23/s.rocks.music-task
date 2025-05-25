  
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_services_module/core/assets/assets.dart';
import 'package:music_services_module/core/theme/app_colors.dart';
  Widget headerBtnWithImg() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRect(
          child: Align(
            alignment: Alignment.centerRight,
            widthFactor: 0.8, // Adjust this factor to crop the sides
            child: Image.asset(AppAssets.cdimg, height: 95, width: 95),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 7, vertical: 11),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            "Book Now",
            style: GoogleFonts.syne(
              color: AppColors.black,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ClipRect(
          child: Align(
            alignment: Alignment.centerLeft,
            widthFactor: 0.7,
            child: Image.asset(AppAssets.pianoimg, height: 95, width: 95),
          ),
        ),
      ],
    );
  }


