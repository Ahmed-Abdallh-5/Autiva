import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';

class MaterialFixedButtom extends StatelessWidget {
  const MaterialFixedButtom(
      {super.key,
      required this.text,
      required this.onPressed,
      this.isEnabled = false,
      this.isrowed = false,
      this.price});

  final String text;
  final void Function()? onPressed;
  final bool isEnabled;
  final bool isrowed;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: isEnabled
            ? Get.isDarkMode
                ? AppConstans.primary
                : AppConstans.primary
            : AppConstans.nonenabledbuttomcolor,
        borderRadius: BorderRadius.circular(AppConstans.Radious),
      ),
      child: MaterialButton(
          onPressed: isEnabled ? onPressed : null,
          child: isrowed
              ? Text(
                  text,
                  style: TextStyleClass.getTextStyle(
                    "medium",
                    16.sp,
                    color: isEnabled
                        ? AppConstans.Whitecolor
                        : AppConstans.darkgreycolordarktheme,
                  ),
                )
              : Row(
                  children: [
                    Image.asset("images/Wad Of Money.png"),
                    SizedBox(
                      width: AppConstans.Width * .02,
                    ),
                    Text(
                      "$price EGP",
                      style: TextStyleClass.getTextStyle(
                        "medium",
                        16.sp,
                        color: AppConstans.Whitecolor,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: AppConstans.Hight * .04,
                      width: AppConstans.Width * .008,
                      decoration: BoxDecoration(color: AppConstans.Whitecolor),
                    ),
                    Spacer(),
                    Text(
                      text,
                      style: TextStyleClass.getTextStyle(
                        "medium",
                        16.sp,
                        color: AppConstans.Whitecolor,
                      ),
                    ),
                    // SizedBox(
                    //   width: AppConstans.Width * .05,
                    // ),
                    Spacer()
                  ],
                )),
    );
  }
}
