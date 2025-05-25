import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_services_module/core/theme/app_colors.dart';

class ServiceScreen extends StatelessWidget {
  final String name;
  const ServiceScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "You tapped on: $name",
          style: GoogleFonts.syne(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
