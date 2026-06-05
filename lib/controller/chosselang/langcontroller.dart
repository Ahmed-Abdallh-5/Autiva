import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/services/settingservices.dart';

class langcontroller extends GetxController {
  late Settingservices settingservices;
  Locale? langauge;

  @override
  void onInit() async {
    settingservices = Get.find<Settingservices>();
    if (settingservices.sharedPref.getString("lang") == "ar") {
      langauge = const Locale("ar");
    } else if (settingservices.sharedPref.getString("lang") == "en") {
      langauge = const Locale("en");
    } else {
      langauge = Locale(Get.deviceLocale!.languageCode);
      settingservices.sharedPref
          .setString("lang", Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }

  void changelang(String langcode) {
    Locale locale = Locale(langcode);
    Get.updateLocale(locale);
    settingservices.sharedPref.setString("lang", langcode);
  }
}
