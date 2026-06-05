import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';
import '../../../core/services/settingservices.dart';

class DialougButtom extends StatelessWidget {
  const DialougButtom(
      {super.key,
      this.onpreesed,
      required this.buttomcolor,
      required this.text,
      required this.hight,
      this.width});
  final VoidCallback? onpreesed;
  final Color buttomcolor;
  final String text;
  final double? hight;
  final double? width;

  @override
  Widget build(BuildContext context) {
    Settingservices settingservices = Get.find();
    return Container(
      width: width,
      height: hight,
      child: Center(
        child: MaterialButton(
          onPressed: onpreesed,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppConstans.Radious / 2)),
          color: buttomcolor,
          child: Center(
            child: Text(
              text,
              style: TextStyleClass.getTextStyle(
                  "weight400", AppConstans.Width / 27,
                  color: AppConstans.Whitecolor),
            ),
          ),
        ),
      ),
    );
  }
}
