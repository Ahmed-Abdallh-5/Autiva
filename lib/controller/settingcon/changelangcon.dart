import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/services/settingservices.dart';

class ChangeLangcon extends GetxController {
  late Settingservices settingservices;

  Locale? langauge;

  @override
  void onInit() async {
    settingservices = Get.find<Settingservices>();
  }

  void changelang(String langcode) {
    Locale locale = Locale(langcode);
    Get.updateLocale(locale);
    settingservices.sharedPref.setString("lang", langcode);
  }
}
