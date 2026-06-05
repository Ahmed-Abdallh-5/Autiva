import 'package:autiva/view/screens/home/homescreen.dart';
import 'package:autiva/view/screens/setting/settingsscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screens/home/activityscrren.dart';
import '../../view/screens/settingscreens/settingscreen.dart';

abstract class ButtomNavBarController extends GetxController {
  changepage(int pagenumber);
}

class ButtomNavBarControllerime extends ButtomNavBarController {
  List<Widget> pages = [
    HomeScreen(),
    ActivitiesScreen(),
    SettingScreeneScreen()
  ];

  bool? isactive = false;
  int pagenumber = 0;
  @override
  changepage(int i) {
    pagenumber = i;
    update();
  }
}
