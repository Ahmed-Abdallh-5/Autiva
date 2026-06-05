import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/constans/constansappvalues.dart';

class HandlingViewMyAccount extends StatelessWidget {
  const HandlingViewMyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstans.PaddingHorizontalAuth,
      ),
      child: Column(
        children: [
          SizedBox(height: AppConstans.distanceapppar),
          Row(
            children: [
              Shimmer.fromColors(
                baseColor:
                    Get.isDarkMode ? Colors.white12 : Colors.grey.shade300,
                highlightColor:
                    Get.isDarkMode ? Colors.white24 : Colors.grey.shade100,
                child: CircleAvatar(
                  radius: 50.h,
                  backgroundColor: Colors.grey,
                ),
              ),
              SizedBox(width: AppConstans.Width * .028),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: Get.isDarkMode
                          ? Colors.white12
                          : Colors.grey.shade300,
                      highlightColor: Get.isDarkMode
                          ? Colors.white24
                          : Colors.grey.shade100,
                      child: Container(
                        height: AppConstans.Hight * 0.02,
                        width: AppConstans.Width * 0.4,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: AppConstans.Hight * 0.01),
                    Shimmer.fromColors(
                      baseColor: Get.isDarkMode
                          ? Colors.white12
                          : Colors.grey.shade300,
                      highlightColor: Get.isDarkMode
                          ? Colors.white24
                          : Colors.grey.shade100,
                      child: Container(
                        height: AppConstans.Hight * 0.015,
                        width: AppConstans.Width * 0.3,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppConstans.Hight * 0.03),
          Shimmer.fromColors(
            baseColor: Get.isDarkMode ? Colors.white12 : Colors.grey.shade300,
            highlightColor:
                Get.isDarkMode ? Colors.white24 : Colors.grey.shade100,
            child: Container(
              height: AppConstans.Hight * 0.07,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(AppConstans.Radious),
              ),
            ),
          ),
          SizedBox(height: AppConstans.Hight * 0.02),
          Shimmer.fromColors(
            baseColor: Get.isDarkMode ? Colors.white12 : Colors.grey.shade300,
            highlightColor:
                Get.isDarkMode ? Colors.white24 : Colors.grey.shade100,
            child: Container(
              height: AppConstans.Hight * 0.07,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(AppConstans.Radious),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
