
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_services_module/core/assets/assets.dart';
import 'package:music_services_module/core/theme/app_colors.dart';
Widget searchHeader() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TextField(
            cursorColor: AppColors.greyBlue,
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.all(12),
                child: SvgPicture.asset(AppAssets.searchsvg),
              ),
              suffixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(height: 21, width: 1, color: AppColors.greyBlue),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: SvgPicture.asset(AppAssets.micsvg),
                  ),
                ],
              ),
              hintText: "Search “Punjabi Lyrics”",
            ),
          ),
        ),
        Container(
          height: 34,
          width: 34,
          margin: EdgeInsets.only(left: 17),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: AppColors.profileBG,
            borderRadius: BorderRadius.circular(50),
          ),
          child: SvgPicture.asset(AppAssets.placeholdersvg),
        ),
      ],
    ),
  );
}
