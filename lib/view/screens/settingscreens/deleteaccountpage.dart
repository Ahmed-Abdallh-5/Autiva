import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../controller/settingcon/deleteaccount.dart';
import '../../../core/classes/statuerequest.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../../core/constans/textstyles/text.dart';
import '../../../core/funtions/authfunctions/validator.dart';
import '../../widgets/auth/authtexts/appbartext.dart';
import '../../widgets/auth/textformfield.dart';
import '../../widgets/settingwidget/dialogsheet.dart';
import '../../widgets/settingwidget/mateialfixedbuttom.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DeleteAccountimple deleteAccountimple = Get.put(DeleteAccountimple());
    double width = AppConstans.Width;
    double height = AppConstans.Hight;

    return Form(
      key: deleteAccountimple.formkey,
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: height * 0.015,
          ),
          child: MaterialFixedButtom(
            isrowed: true,
            isEnabled: true,
            text: "40".tr,
            onPressed: () async {
              if (deleteAccountimple.formkey.currentState!.validate()) {
                Get.defaultDialog(
                  radius: 20,
                  title: "337".tr,
                  titleStyle:
                      TextStyleClass.getTextStyle("weight300", width * 0.04),
                  middleText: "",
                  confirm: Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: DialougButtom(
                      buttomcolor: Get.isDarkMode
                          ? AppConstans.primary
                          : AppConstans.primary,
                      width: width * 0.3,
                      text: "338".tr,
                      hight: height * 0.05,
                      onpreesed: () {
                        deleteAccountimple.Delete();
                      },
                    ),
                  ),
                  cancel: Padding(
                    padding: EdgeInsets.only(bottom: height * 0.02),
                    child: DialougButtom(
                      width: width * 0.3,
                      buttomcolor: Get.isDarkMode
                          ? AppConstans.primary
                          : AppConstans.primary,
                      text: "339".tr,
                      hight: height * 0.05,
                      onpreesed: () {
                        Get.back();
                      },
                    ),
                  ),
                );
              }
            },
          ),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back();
            },
          ),
          elevation: 0,
          centerTitle: true,
          title: Appbartext(appbartext: "114".tr),
        ),
        body: GetBuilder<DeleteAccountimple>(
          builder: (deleteAccountimple) => deleteAccountimple.statueRequest ==
                  StatueRequest.loading
              ? Center(
                  child: SizedBox(
                    width: width * 0.15,
                    height: height * 0.15,
                    child: Lottie.asset(Get.isDarkMode
                        ? AppConstans.loadinglottiedark
                        : AppConstans.loadinglottielight),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: height * 0.03),
                        Center(
                          child: Text("340".tr,
                              style: TextStyleClass.getTextStyle(
                                "weight400",
                                width * 0.05,
                              )),
                        ),
                        SizedBox(height: height * 0.03),
                        Textformfield(
                          iconsuffix: deleteAccountimple.obsecuretext
                              ? Icon(Icons.visibility_off_outlined)
                              : Icon(Icons.visibility),
                          obscureText: deleteAccountimple.obsecuretext,
                          showpassword: () {
                            deleteAccountimple.Obsecuretextfunction();
                          },
                          validatorfunc: (val) {
                            return valditor(
                              val!,
                              val.length,
                              val.length,
                              "password delation",
                            );
                          },
                          hinttextstring: "24".tr,
                          icon: Icon(Icons.lock_outline),
                          textEditingController: deleteAccountimple.password,
                        ),
                        SizedBox(height: height * 0.03),
                      ],
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
