import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/navbar/navigationbuttombarcon.dart';
import '../../../core/services/settingservices.dart';
import '../../widgets/home/navigarorbuttombar.dart';

class MainHomescreen extends StatelessWidget {
  const MainHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    ButtomNavBarControllerime buttomNavBarControllerime =
        Get.put(ButtomNavBarControllerime());
    Settingservices settingservices = Get.find();
    return GetBuilder<ButtomNavBarControllerime>(
      builder: (buttomNavBarControllerime) =>
          // upgrader: Upgrader(
          //   languageCode: settingservices.sharedPref.getString("lang"),
          //   countryCode: "EG",
          //   // minAppVersion: "2.0.0",
          //   // debugDisplayAlways: true,
          // ),
          Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 70.h,
          elevation: .1,
          child: Row(
            children: [
              IconButtomNav(
                onPressed: () {
                  buttomNavBarControllerime.changepage(0);
                },
                icon: Icons.home,
                navlabel: "368".tr,
                isactivated:
                    buttomNavBarControllerime.pagenumber == 0 ? true : false,
              ),
              Spacer(),
              IconButtomNav(
                onPressed: () {
                  buttomNavBarControllerime.changepage(1);
                },
                icon: Icons.sports_esports_outlined,
                navlabel: "369".tr,
                isactivated:
                    buttomNavBarControllerime.pagenumber == 1 ? true : false,
              ),
              Spacer(),
              IconButtomNav(
                onPressed: () {
                  buttomNavBarControllerime.changepage(2);
                },
                icon: Icons.settings_outlined,
                navlabel: "369".tr,
                isactivated:
                    buttomNavBarControllerime.pagenumber == 2 ? true : false,
              ),

              // Spacer(),
              // IconButtomNav(
              //   onPressed: () {
              //     buttomNavBarControllerime.changepage(2);
              //   },
              //   image: "images/calender.png",
              //   navlabel: "370".tr,
              //   isactivated:
              //       buttomNavBarControllerime.pagenumber == 2 ? true : false,
              // ),
              // Spacer(),
              // IconButtomNav(
              //   navlabel: "371".tr,
              //   circleavater: true,
              //   onPressed: () async {
              //     // myaccountCon.Getdata();
              //     buttomNavBarControllerime.changepage(3);
              //   },
              // isactivated:
              //     buttomNavBarControllerime.pagenumber == 3 ? true : false,
              // )
            ],
          ),
        ),
        body: buttomNavBarControllerime.pages
            .elementAt(buttomNavBarControllerime.pagenumber),
      ),
    );
  }
}
