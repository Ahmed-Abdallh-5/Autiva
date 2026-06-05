import 'package:autiva/view/widgets/auth/textformfield.dart';
import 'package:autiva/view/widgets/textgesondetector.dart/textgesondetector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/auth/login/logincontroller.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../../core/funtions/authfunctions/validator.dart';
import '../../sharedwidgets/sharedbuttom.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    Logincontrollerimp logcontroller = Get.put(Logincontrollerimp());
    return GetBuilder<Logincontrollerimp>(builder: (controller) {
      return Form(
        key: logcontroller.formKeylogin,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black12,
                offset: Offset(0, 10),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text("Email"),
              const SizedBox(height: 8),
              Textformfield(
                iserroredtext: logcontroller.iserroredtextemail,
                errortext: logcontroller.errortextemail,
                lapeltext: "13".tr,
                iconsuffix: null,
                validatorfunc: (val) {
                  return valditor(val!, val.length, val.length, "Email");
                },
                textEditingController: logcontroller.email,
                hinttextstring: "ArenaX@gmail.com",
              ),
              SizedBox(height: AppConstans.distancebetweentextfield),
              Textformfield(
                iserroredtext: logcontroller.errortextpassword,
                errortext: logcontroller.passwordError,
                lapeltext: "14".tr,
                iconsuffix: logcontroller.obsecuretext
                    ? Icon(Icons.visibility_outlined,
                        color: Get.isDarkMode
                            ? AppConstans.darkgreycolordarktheme
                            : AppConstans.darkgreycolor)
                    : Icon(Icons.visibility_off_outlined,
                        color: Get.isDarkMode
                            ? AppConstans.darkgreycolordarktheme
                            : AppConstans.darkgreycolor),
                obscureText: logcontroller.obsecuretext,
                showpassword: () {
                  logcontroller.Obsecuretextfunction();
                },
                validatorfunc: (val) {
                  return valditor(val!, val.length, val.length, "password");
                },
                textEditingController: logcontroller.Password,
                hinttextstring: "xxxxxxxxx",
              ),
              SizedBox(height: 8.h),

              Sharedbuttom(
                  text: "16".tr,
                  hight: AppConstans.authbottomsize,
                  isEnabled: true,
                  onpreesed: () {
                    print(logcontroller.email.text);
                    print(logcontroller.Password.text);

                    print("login");
                    logcontroller.login();
                  }),
              // SizedBox(height: 16),
              const SizedBox(height: 15),
              Center(
                child: Row(
                  children: [
                    Text(
                      "17".tr,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    TextDectecot(
                        color: AppConstans.primary,
                        text: "18".tr,
                        ontap: () {
                          Get.toNamed("/signup");
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
