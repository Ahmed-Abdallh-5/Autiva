import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constans/constansappvalues.dart';
import '../../../../core/constans/textstyles/text.dart';

class OrText extends StatelessWidget {
  final EdgeInsetsGeometry padding;

  OrText({super.key, EdgeInsetsGeometry? padding})
      : padding = padding ?? EdgeInsets.symmetric(horizontal: 16.w);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding, // Use customizable padding
      child: Row(
        children: [
          // Flexible divider line
          Flexible(
            child: Container(
                height: 1.h,
                width: 114.w,
                color: Get.isDarkMode
                    ? AppConstans.darkgreycolordarktheme
                    : AppConstans.darkgreycolor),
          ),
          SizedBox(
            width: 16.w,
          ),
          // "OR" text
          Text(
            "69".tr,
            style: TextStyleClass.getTextStyle(
              "weight400",
              AppConstans.Width / 25,
              color: const Color.fromARGB(255, 144, 144, 144),
            ),
          ),
          SizedBox(
            width: 16.w,
          ),
          // Flexible divider line
          Flexible(
            child: Container(
                height: 1.h,
                width: 114.w,
                color: Get.isDarkMode
                    ? AppConstans.darkgreycolordarktheme
                    : AppConstans.darkgreycolor),
          ),
        ],
      ),
    );
  }
}
