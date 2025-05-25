// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:music_services_module/core/assets/assets.dart';

class ServiceItem {
  final String title;
  final String desc;
  final String iconpath;
  final String bgimgpath;
  ServiceItem(this.title, this.desc, this.iconpath, this.bgimgpath);
}

final List serviceCardItem = [
  {
    "icon": AppAssets.musicproductionsvg,
    "title": "Music Production",
    "desc": "Custom instrumentals & film scoring",
    "img": AppAssets.musicbgimg,
  },

  {
    "icon": AppAssets.mixingmasteringsvg,
    "title": "Mixing & Masterig",
    "desc": "Make your tracks Radio-ready",
    "img": AppAssets.mixingbgimg,
  },

  {
    "icon": AppAssets.lyricswritingsvg,
    "title": "Lyriccs Writing",
    "desc": "Turn feelings into lyrics",
    "img": AppAssets.lyricsbgimg,
  },

  {
    "icon": AppAssets.vocalssvg,
    "title": "Vocals",
    "desc": "Vocals that bring our lyrics to life",
    "img": AppAssets.vocalsbgimg,
  },
];
