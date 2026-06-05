import 'package:autiva/view/widgets/auth/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/auth/login/logincontroller.dart';
import '../../../../core/classes/background.dart';
import '../../../../core/constans/constansappvalues.dart';
import '../../../widgets/auth/loginform.dart';
import '../../../widgets/textgesondetector.dart/textgesondetector.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Logincontrollerimp logcontroller = Get.put(Logincontrollerimp());
    return Scaffold(
      body: LoginBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 100),
                AuthHeader(
                  maintext: "12".tr,
                  subtext: "557".tr,
                ),
                const SizedBox(height: 30),
                LoginForm(),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextDectecot(
                      color: AppConstans.primary,
                      text: "15".tr,
                      ontap: () {
                        logcontroller.gotoforgetpassword();
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
