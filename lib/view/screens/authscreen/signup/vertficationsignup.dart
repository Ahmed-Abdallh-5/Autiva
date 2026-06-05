import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import '../../../../controller/auth/signup/vertfiycodesignup.dart';
import '../../../../core/classes/statuerequest.dart';
import '../../../../core/constans/constansappvalues.dart';
import '../../../../core/constans/textstyles/text.dart';
import '../../../../core/services/settingservices.dart';
import '../../../sharedwidgets/sharedbuttom.dart';
import '../../../widgets/auth/authtexts/appbartext.dart';
import '../../../widgets/auth/authtexts/bodysmallauth.dart';
import '../../../widgets/textgesondetector.dart/textgesondetector.dart';

class VertficationscreenSignUp extends StatelessWidget {
  const VertficationscreenSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    VerficationControllerSignUPimple vertfiycontrollerr =
        Get.put(VerficationControllerSignUPimple());
    Settingservices settingservices = Get.find();
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Appbartext(appbartext: "33".tr),
        ),
        body: GetBuilder<VerficationControllerSignUPimple>(
          builder: (vertfiycontrollerr) => vertfiycontrollerr.statueRequest ==
                  StatueRequest.loading
              ? Center(
                  child: Container(
                      width: AppConstans.IndicatorWidth,
                      height: AppConstans.IndicatorWidth,
                      child: Lottie.asset(Get.isDarkMode
                          ? AppConstans.loadinglottiedark
                          : AppConstans.loadinglottielight)),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppConstans.PaddingHorizontalAuth),
                  child: Column(
                    children: [
                      SizedBox(
                        height: AppConstans.distanceapppar,
                      ),
                      BodyAuth(authheadline: "35".tr),
                      SizedBox(
                        height: 24.h,
                      ),
                      OtpTextField(
                        textStyle: TextStyleClass.getTextStyle(
                          "medium",
                          24.sp,
                          color: Get.isDarkMode
                              ? AppConstans.primary
                              : AppConstans.primary,
                        ),

                        cursorColor: Get.isDarkMode
                            ? AppConstans.primary
                            : AppConstans.primary,
                        borderWidth: 1.2,
                        fieldHeight: 60.h,
                        fieldWidth: 50.w,
                        borderRadius:
                            BorderRadius.circular(AppConstans.Radious),
                        numberOfFields: 4,

                        focusedBorderColor: Get.isDarkMode
                            ? AppConstans.primary
                            : AppConstans.primary,
                        // enabledBorderColor: AppConstans.themecolor,
                        showFieldAsBox: true,
                        // Listen for input changes
                        onCodeChanged: (String code) {
                          if (settingservices.sharedPref.getString("lang") ==
                              "ar") {
                            String reversedCode =
                                code.split('').reversed.join('');
                            vertfiycontrollerr
                                .updateVerificationCode(reversedCode);
                          } else {
                            vertfiycontrollerr.updateVerificationCode(code);
                          }
                        },
                        onSubmit: (String verificationCode) {
                          if (settingservices.sharedPref.getString("lang") ==
                              "ar") {
                            vertfiycontrollerr.updateVerificationCode(
                                verificationCode.split('').reversed.join(''));
                          } else {
                            vertfiycontrollerr
                                .updateVerificationCode(verificationCode);
                          }
                        },
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      TextDectecot(
                          alignment: Alignment.center,
                          text: vertfiycontrollerr.isbuttomenable == true
                              ? " Resend code"
                              : "Resend code after ${vertfiycontrollerr.timersecomds}",
                          ontap: vertfiycontrollerr.isbuttomenable == true
                              ? () {
                                  vertfiycontrollerr.ResendCode();
                                  vertfiycontrollerr.Timerfunc();
                                }
                              : null,
                          color: vertfiycontrollerr.isbuttomenable == true
                              ? (Get.isDarkMode
                                  ? AppConstans.primary
                                  : AppConstans.primary)
                              : AppConstans.primary.withOpacity(0.6)),
                      Spacer(),
                      Sharedbuttom(
                        isEnabled: vertfiycontrollerr.enable,
                        text: "201".tr,
                        hight: AppConstans.authbottomsize,
                        onpreesed: () {
                          if (settingservices.sharedPref.getString("lang") ==
                              "ar") {
                            vertfiycontrollerr.confirmCode(
                                vertfiycontrollerr.verificationCode!);
                          } else {
                            vertfiycontrollerr.confirmCode(
                                vertfiycontrollerr.verificationCode!);
                          }
                        },
                      ),
                      SizedBox(height: AppConstans.distancefrombottombar)
                    ],
                  ),
                ),
        ));
  }
}
