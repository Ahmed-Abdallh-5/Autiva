import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';
import '../../../core/services/settingservices.dart';

class IconButtomNav extends StatelessWidget {
  IconButtomNav({
    super.key,
    this.onPressed,
    this.isactivated = false,
    this.image,
    this.navlabel,
    this.icon,
    this.circleavater = false,
  });

  final String? image;
  final bool? isactivated;
  final IconData? icon;
  final String? navlabel;
  final void Function()? onPressed;
  final bool? circleavater;

  @override
  Widget build(BuildContext context) {
    Settingservices settingservices = Get.find();

    return InkWell(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: 32.h,
              width: 50.w,
              decoration: BoxDecoration(
                shape:
                    circleavater == true ? BoxShape.circle : BoxShape.rectangle,
                color: isactivated == true
                    ? Get.isDarkMode
                        ? AppConstans.primary
                        : AppConstans.primary
                    : Colors.transparent,
                borderRadius: circleavater == true
                    ? null
                    : BorderRadius.circular(AppConstans.Radious),
              ),
              alignment: Alignment.center,
              child: circleavater == true
                  ? SizedBox()
                  : Icon(
                      icon,
                      color: isactivated == true
                          ? AppConstans.Whitecolor
                          : AppConstans.grey,
                      size: 22,
                    )),
          Text(
            navlabel!,
            textAlign: TextAlign.center,
            style: TextStyleClass.getTextStyle(
              'Medium',
              12.sp, // Responsive font size
              color:
                  isactivated == true ? AppConstans.primary : AppConstans.grey,
            ),
          ),
        ],
      ),
    );
  }
}
