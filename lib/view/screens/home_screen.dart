import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_services_module/core/assets/assets.dart';
import 'package:music_services_module/core/theme/app_colors.dart';
import 'package:music_services_module/view/screens/service_screen.dart';
import 'package:music_services_module/view/widget/comman/service_card.dart';
import 'package:music_services_module/view/widget/header/header_btn_and_text.dart';
import 'package:music_services_module/view/widget/header/header_text.dart';
import 'package:music_services_module/view/widget/header/search_header.dart';
import 'package:music_services_module/view/widget/nav_bar/navi_item_card.dart';
import 'package:music_services_module/viewmodels/service_provder.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [AppColors.lightRed, AppColors.darkRed],
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  searchHeader(),
                  SizedBox(height: 36),
                  headerText(),
                  headerBtnWithImg(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Text(
              "Hire hand-picked Pros for popular music services",
              style: GoogleFonts.syne(
                color: AppColors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),

          Consumer<ServiceProvider>(
            builder: (context, serviceProvider, child) {
              if (serviceProvider.isLoaing) {
                return CircularProgressIndicator(color: AppColors.white);
              }
              if (serviceProvider.services.isEmpty) {
                return Center(child: Text("No services available"));
              }

              return Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children:
                        serviceProvider.services.map((service) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 11.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) =>
                                            ServiceScreen(name: service.title),
                                  ),
                                );
                              },
                              child: serviceCard(
                                icon: service.iconpath,
                                title: service.title,
                                desc: service.desc,
                                img: service.bgimgpath,
                              ),
                            ),
                          );
                        }).toList(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.background,
            border: Border(
              top: BorderSide(color: AppColors.greyBlue, width: 1),
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              navItem(
                icon: AppAssets.appiconimg,
                text: "Home",
                isSelected: true,
                onTap: () {},
              ),
              navItem(
                icon: AppAssets.newsimg,
                text: "News",
                color: AppColors.greyBlue,
                onTap: () {},
              ),
              navItem(
                icon: AppAssets.trackboximg,
                text: "Track Box",
                color: AppColors.greyBlue,
                onTap: () {},
              ),
              navItem(
                icon: AppAssets.projectsimg,
                text: "Projects",
                color: AppColors.greyBlue,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
