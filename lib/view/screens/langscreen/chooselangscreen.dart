import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/chosselang/langcontroller.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';
import '../../../core/services/settingservices.dart';
import '../../widgets/langbutoom.dart';

class chooselangscreen extends StatelessWidget {
  const chooselangscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Settingservices settingservices = Get.find();
    langcontroller controller = Get.find();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "1".tr,
            style: TextStyleClass.getTextStyle("Bold", AppConstans.Width / 15),
          ),
          SizedBox(
            height: 15.h,
          ),
          LangButton(
            onpressLangChange: () {
              controller.changelang("ar");
              settingservices.sharedPref.setString("chosenlanguage", "2".tr);
              Get.offAllNamed("/onbordscreen");
            },
            langname: "2".tr,
          ),
          SizedBox(
            height: 15.h,
          ),
          LangButton(
            onpressLangChange: () {
              controller.changelang("en");
              settingservices.sharedPref.setString("chosenlanguage", "3".tr);
              settingservices.sharedPref.setString("Step", "1");
              Get.offAllNamed("/loginsceen");
            },
            langname: "3".tr,
          )
        ],
      ),
    );
  }
}
