  
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_services_module/core/theme/app_colors.dart';
  Widget navItem({
    required String icon,
    required String text,
    required VoidCallback onTap,
    Color color = AppColors.white,
    bool isSelected = false,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          isSelected
              ? ClipRect(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  heightFactor: 0.5,
                  child: Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.white,
                    ),
                  ),
                ),
              )
              : SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.only(bottom: 4.0, top: 14),
            child: Column(
              children: [
                Image.asset(icon, color: color),
                SizedBox(height: 4),
                Text(
                  text,
                  style: GoogleFonts.syne(
                    color: color,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

