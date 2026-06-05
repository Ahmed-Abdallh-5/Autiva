import 'package:autiva/view/widgets/auth/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/auth/signup/signupcontroller.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../../core/funtions/authfunctions/validator.dart';
import '../../sharedwidgets/sharedbuttom.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    SignUPcontrollerimp signupcontroller = Get.put(SignUPcontrollerimp());
    return GetBuilder<SignUPcontrollerimp>(
        builder: (signupcontroller) => Form(
              key: signupcontroller.formstatekey,
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
                    // Text("21".tr),
                    SizedBox(height: 8),
                    Textformfield(
                      lapeltext: "21".tr,
                      iconsuffix: null,
                      validatorfunc: (val) {
                        return valditor(
                            val!, val.length, val.length, "username");
                      },
                      textEditingController: signupcontroller.username,
                      textInputType: TextInputType.name,
                      hinttextstring: "ahmed",
                    ),
                    SizedBox(height: 16),
                    // Text("13".tr),
                    SizedBox(height: 8),
                    Textformfield(
                      iserroredtext: signupcontroller.iserroredtextemail,
                      errortext: signupcontroller.errortextemail,
                      lapeltext: "22".tr,
                      iconsuffix: null,
                      validatorfunc: (val) {
                        return valditor(
                          val!,
                          val.length,
                          val.length,
                          "Email",
                        );
                      },
                      textEditingController: signupcontroller.Email,
                      textInputType: TextInputType.emailAddress,
                      hinttextstring: "ahmed@gmail.com",
                    ),
                    SizedBox(
                      height: 24.h,
                    ),

                    Textformfield(
                      iserroredtext: signupcontroller.ispasswordError,
                      errortext: signupcontroller.passwordError,
                      lapeltext: "24".tr,
                      iconsuffix: signupcontroller.obsecuretext
                          ? Icon(Icons.visibility_off_outlined,
                              color: Get.isDarkMode
                                  ? AppConstans.darkgreycolordarktheme
                                  : AppConstans.darkgreycolor)
                          : Icon(Icons.visibility,
                              color: Get.isDarkMode
                                  ? AppConstans.darkgreycolordarktheme
                                  : AppConstans.darkgreycolor),
                      obscureText: signupcontroller.obsecuretext,
                      showpassword: () {
                        signupcontroller.Obsecuretextfunction();
                      },
                      validatorfunc: (val) {
                        return valditor(
                            val!, val.length, val.length, "password",
                            passval1: signupcontroller.Password.text,
                            passval2: signupcontroller.confirmPassword!.text);
                      },
                      textEditingController: signupcontroller.Password,
                      hinttextstring: "xxxxxxxx",
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Textformfield(
                      iserroredtext: signupcontroller.ispasswordError,
                      errortext: signupcontroller.passwordError,
                      lapeltext: "556".tr,
                      iconsuffix: signupcontroller.obsecuretext2
                          ? Icon(Icons.visibility_off_outlined)
                          : Icon(Icons.visibility),
                      obscureText: signupcontroller.obsecuretext2,
                      showpassword: () {
                        signupcontroller.Obsecuretextfunction2();
                      },
                      validatorfunc: (val) {
                        return valditor(
                            val!, val.length, val.length, "password",
                            passval1: signupcontroller.Password.text,
                            passval2: signupcontroller.confirmPassword!.text);
                      },
                      textEditingController: signupcontroller.confirmPassword!,
                      hinttextstring: "xxxxxxxx",
                    ),
                    SizedBox(height: 24),

                    Sharedbuttom(
                        text: "18".tr,
                        hight: AppConstans.authbottomsize,
                        isEnabled: true,
                        onpreesed: () {
                          signupcontroller.SigUPmethod();
                        }),
                    // SizedBox(height: 16),
                    SizedBox(height: 15),
                    Center(
                      child: Text(
                        "26".tr,
                        style: TextStyle(
                          color: const Color(0xff1C8EA3),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
