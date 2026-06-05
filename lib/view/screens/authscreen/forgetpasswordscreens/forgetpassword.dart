import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../controller/auth/forgetpassword/checkemail.dart';
import '../../../../core/classes/statuerequest.dart';
import '../../../../core/constans/constansappvalues.dart';
import '../../../../core/funtions/authfunctions/validator.dart';
import '../../../sharedwidgets/sharedbuttom.dart';
import '../../../widgets/auth/authtexts/appbartext.dart';
import '../../../widgets/auth/authtexts/bodysmallauth.dart';
import '../../../widgets/auth/textformfield.dart';

class ForgetpasswordScreen extends StatelessWidget {
  const ForgetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Forgetpasswordimple forgetpasscontroller = Get.put(Forgetpasswordimple());
    return Scaffold(
      resizeToAvoidBottomInset: AppConstans.resizebutton,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
        centerTitle: true,
        title: Appbartext(appbartext: "28".tr),
      ),
      body: Form(
          key: forgetpasscontroller.keyow,
          child: GetBuilder<Forgetpasswordimple>(
            builder: (forgetpasscontroller) => forgetpasscontroller
                        .statueRequest ==
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
                        // AuthHeadLinesmall(authheadline: "29".tr),
                        BodyAuth(authheadline: "30".tr),
                        SizedBox(
                          height: 24.h,
                        ),
                        Textformfield(
                            iserroredtext:
                                forgetpasscontroller.iserroredtextemail,
                            errortext: forgetpasscontroller.errortextemail,
                            lapeltext: "32".tr,
                            validatorfunc: (val) {
                              return valditor(
                                  val!, val.length, val.length, "Email");
                            },
                            hinttextstring: "Ahmed@gmail.com",
                            textEditingController: forgetpasscontroller.email),
                        SizedBox(
                          height: AppConstans.Sizeboxsize * 1.5,
                        ),
                        Spacer(),
                        Sharedbuttom(
                          text: "31".tr,
                          hight: AppConstans.authbottomsize,
                          onpreesed: () {
                            forgetpasscontroller.keyow.currentState!.validate();

                            forgetpasscontroller.ConfirmEmail();
                          },
                        ),

                        SizedBox(height: AppConstans.distancefrombottombar)
                      ],
                    ),
                  ),
          )),
    );
  }
}
