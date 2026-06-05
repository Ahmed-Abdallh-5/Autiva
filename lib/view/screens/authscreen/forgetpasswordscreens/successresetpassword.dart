import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/forgetpassword/successpasswordreset.dart';
import '../../../../core/constans/constansappvalues.dart';
import '../../../sharedwidgets/sharedbuttom.dart';
import '../../../widgets/auth/authtexts/appbartext.dart';
import '../../../widgets/auth/authtexts/bodysmallauth.dart';
import '../../../widgets/auth/authtexts/haedline2.dart';

class SuccesResetPassWord extends StatelessWidget {
  const SuccesResetPassWord({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPswwordimpl controller = Get.put(SuccessResetPswwordimpl());
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Appbartext(appbartext: "45".tr),
          automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppConstans.PaddingHorizontalAuth),
          child: Column(
            children: [
              SizedBox(
                height: AppConstans.distanceapppar,
              ),
              Center(
                child: Icon(Icons.check_circle_outline,
                    size: 300.h,
                    color: Get.isDarkMode
                        ? AppConstans.primary
                        : AppConstans.primary),
              ),
              SizedBox(
                height: 24.h,
              ),
              AuthHeadLinesmall(authheadline: "46".tr),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: BodyAuth(authheadline: "47".tr),
              ),
              Spacer(),
              Sharedbuttom(
                text: "48".tr,
                hight: AppConstans.authbottomsize,
                onpreesed: () {
                  controller.GoTOLogin();
                },
              ),
              SizedBox(height: AppConstans.distancefrombottombar)
            ],
          ),
        ),
      ),
    );
  }
}
