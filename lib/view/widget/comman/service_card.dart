import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_services_module/core/assets/assets.dart';
import 'package:music_services_module/core/theme/app_colors.dart';

Widget serviceCard({
  required String icon,
  required String title,
  required String desc,
  required String img,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: AppColors.border),
      color: AppColors.black.withOpacity(0.4),
      image: DecorationImage(
        image: AssetImage(img),
        fit: BoxFit.cover,
        opacity: 0.2,
        colorFilter: ColorFilter.linearToSrgbGamma(),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(icon),
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.syne(
                    color: AppColors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  desc,
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.syne(
                    color: AppColors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 14,
          width: 30,
          child: Expanded(child: SvgPicture.asset(AppAssets.rightsidesvg)),
        ),
      ],
    ),
  );
}
