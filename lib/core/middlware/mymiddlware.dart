import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../services/settingservices.dart';

class Mymiddlware extends GetMiddleware {
  int? get Priority => 1;

  RouteSettings? redirect(String? route) {
    Settingservices settingservices = Get.find();

    if (settingservices.sharedPref.getString("Step") == "1") {
      return RouteSettings(name: "/loginsceen");
    }
    if (settingservices.sharedPref.getString("Step") == "2") {
      return RouteSettings(name: "/childDataScreen");
    }
    if (settingservices.sharedPref.getString("Step") == "3") {
      return RouteSettings(name: "/homescreen");
    }
  }
}
