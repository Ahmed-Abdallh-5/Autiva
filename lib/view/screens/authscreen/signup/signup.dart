import 'package:autiva/core/classes/statuerequest.dart';
import 'package:autiva/view/widgets/auth/header.dart';
import 'package:autiva/view/widgets/auth/signupform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../controller/auth/signup/signupcontroller.dart';
import '../../../../core/classes/background.dart';
import '../../../../core/constans/constansappvalues.dart';
import '../../../widgets/textgesondetector.dart/textgesondetector.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignUPcontrollerimp signupcontroller = Get.put(SignUPcontrollerimp());

    return GetBuilder<SignUPcontrollerimp>(
        builder: (signupcontroller) => Scaffold(
              body: signupcontroller.statueRequest == StatueRequest.loading
                  ? Center(
                      child: Lottie.asset(
                        "lottie/Service.json",
                        width: 200,
                        height: 200,
                        fit: BoxFit.contain,
                        repeat: true,
                      ),
                    )
                  : LoginBackground(
                      child: SafeArea(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 30),
                              AuthHeader(
                                maintext: "19".tr,
                                subtext: "555".tr,
                              ),
                              SizedBox(height: 30),
                              SignupForm(),
                              const SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 24),
                                child: TextDectecot(
                                    color: AppConstans.primary,
                                    text: "26".tr,
                                    ontap: () {
                                      signupcontroller.Gotologin();
                                    }),
                              )

                              // SizedBox(height: 30),
                            ],
                          ),
                        ),
                      ),
                    ),
            ));
  }
}
