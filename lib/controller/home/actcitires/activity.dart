import 'package:autiva/core/constans/constansappvalues.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/model/local/activiteslocalclass.dart';
import '../../../view/screens/home/edu/eduvideos.dart';
import '../../../view/screens/home/games/gamesscreen.dart';

abstract class ActivitiesController extends GetxController {}

class ActivitiesControllerImp extends ActivitiesController {
  List pages = [
    GamesScreen(),
    EduScreen(),
    null, // Communication لسه
  ];

  void goToActivityDetails(ActivityItem item) {
    if (item.page != null) {
      Get.to(() => item.page!);
    } else {
      Get.snackbar("Coming Soon", "This feature is not available yet");
    }
  }

  List<ActivityItem> activities = [
    ActivityItem(
      title: '374'.tr,
      subtitle: '377'.tr,
      icon: Icons.sports_esports_rounded,
      iconColor: AppConstans.purple,
      page: GamesScreen(),
    ),
    ActivityItem(
      title: '375'.tr,
      subtitle: '378'.tr,
      icon: Icons.videocam_rounded,
      iconColor: AppConstans.orange,
      page: EduScreen(),
    ),
    // ActivityItem(
    //   title: '376'.tr,
    //   subtitle: '379'.tr,
    //   icon: Icons.chat_bubble_rounded,
    //   iconColor: AppConstans.primary,
    //   page: null,
    // ),
  ];
}
