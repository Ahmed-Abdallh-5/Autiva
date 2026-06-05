import 'package:autiva/view/widgets/textgesondetector.dart/textgesondetector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:lottie/lottie.dart';

import '../../../../controller/auth/forgetpassword/vertficationcontroller.dart';
import '../../../../core/classes/statuerequest.dart';
import '../../../../core/constans/constansappvalues.dart';
import '../../../../core/constans/textstyles/text.dart';
import '../../../../core/services/settingservices.dart';
import '../../../sharedwidgets/sharedbuttom.dart';
import '../../../widgets/auth/authtexts/appbartext.dart';
import '../../../widgets/auth/authtexts/bodysmallauth.dart';

class Vertficationscreen extends StatelessWidget {
  const Vertficationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    VerficationControllerimple vertfiycontroller =
        Get.put(VerficationControllerimple());
    Settingservices settingservices = Get.find();
    return Scaffold(
        resizeToAvoidBottomInset: AppConstans.resizebutton,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Appbartext(appbartext: "33".tr),
        ),
        body: GetBuilder<VerficationControllerimple>(
          builder: (vertfiycontroller) => vertfiycontroller.statueRequest ==
                  StatueRequest.loading
              ? Center(
                  child: Container(
                      width: AppConstans.IndicatorWidth,
                      height: AppConstans.IndicatorHight,
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
                        textStyle: TextStyleClass.getTextStyle("medium", 20,
                            color: Get.isDarkMode
                                ? AppConstans.primary
                                : AppConstans.primary),

                        cursorColor: Get.isDarkMode
                            ? AppConstans.primary
                            : AppConstans.primary,
                        borderWidth: 1.2,
                        fieldHeight: 45,
                        fieldWidth: 45,
                        borderRadius:
                            BorderRadius.circular(AppConstans.Radious),
                        numberOfFields: 4,

                        focusedBorderColor: Get.isDarkMode
                            ? AppConstans.primary
                            : AppConstans.primary,

                        // enabledBorderColor: AppConstans.themecolor,
                        showFieldAsBox: true,
                        onCodeChanged: (String code) {
                          if (settingservices.sharedPref.getString("lang") ==
                              "ar") {
                            String reversedCode =
                                code.split('').reversed.join('');
                            vertfiycontroller
                                .updateVerificationCode(reversedCode);
                          } else {
                            vertfiycontroller.updateVerificationCode(code);
                          }
                        },
                        // Optional: Handle final submission logic
                        onSubmit: (String verificationCode) {
                          if (settingservices.sharedPref.getString("lang") ==
                              "ar") {
                            vertfiycontroller.updateVerificationCode(
                                verificationCode.split('').reversed.join(''));
                          } else {
                            vertfiycontroller
                                .updateVerificationCode(verificationCode);
                          }
                        },
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      TextDectecot(
                          alignment: Alignment.center,
                          text: vertfiycontroller.isbuttomenable == true
                              ? " Resend code"
                              : "Resend code after ${vertfiycontroller.timersecomds}",
                          ontap: vertfiycontroller.isbuttomenable == true
                              ? () {
                                  vertfiycontroller.ResendCode();
                                  vertfiycontroller.Timerfunc();
                                }
                              : null,
                          color: vertfiycontroller.isbuttomenable == true
                              ? (Get.isDarkMode
                                  ? AppConstans.primary
                                  : AppConstans.primary)
                              : Color.fromARGB(136, 28, 143, 163)),
                      Spacer(),
                      Sharedbuttom(
                        isEnabled: vertfiycontroller.enable,
                        text: "201".tr,
                        hight: AppConstans.authbottomsize,
                        onpreesed: () {
                          if (settingservices.sharedPref.getString("lang") ==
                              "ar") {
                            vertfiycontroller.confirmCode(
                                vertfiycontroller.vertficationcode!);
                          } else {
                            vertfiycontroller.confirmCode(
                                vertfiycontroller.vertficationcode!);
                          }
                        },
                      ),
                      SizedBox(height: 24.h),
                    ],
                  ),
                ),
        ));
  }
}
