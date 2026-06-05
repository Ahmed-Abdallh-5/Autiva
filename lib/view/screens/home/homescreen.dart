import 'package:autiva/core/services/settingservices.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/home/header.dart';
import '../../widgets/home/maincontainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Settingservices settingservices = Get.find();
    return
        // backgroundColor: const Color(0xffF5F5F5),
        SafeArea(
      child: Column(
        children: [
          HomeHeader(
              name: "373".tr +
                      ",${settingservices.sharedPref.getString('username')}" ??
                  ""),
          SizedBox(height: 30),
          UploadCard(
            name: "371".tr,
            desc: "372".tr,
          ),
        ],
      ),

      // floatingActionButton: const FloatingUploadButton(),
      // bottomNavigationBar: const CustomBottomNav(),
    );
  }
}
