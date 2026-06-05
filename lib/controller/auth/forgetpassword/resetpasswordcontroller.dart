import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/classes/statuerequest.dart';
import '../../../core/funtions/handlingdata.dart';
import '../../../core/model/apis/auth/forgetpassword/resetpassword.dart';

abstract class Resetpassword extends GetxController {
  void confirmpassword();
  Obsecuretextfunction2();
  Obsecuretextfunction();
}

class Resetpasswordimple extends Resetpassword {
  late TextEditingController password;
  late TextEditingController repassword;
  bool obsecuretext = true;
  bool obsecuretext2 = true;
  bool iserroredtextemail = false;
  bool errortextpassword = false;
  String errortextemail = "";
  String passwordError = "";
  StatueRequest? statueRequest;
  ResetPassword resetPassword = ResetPassword(Get.find());
  String? Email;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String? vertficationcode;
  void confirmpassword() async {
    if (formkey.currentState!.validate()) {
      statueRequest = StatueRequest.loading;
      update();
      var response = await resetPassword.Sendingdata(
          Email!, password.text, repassword.text);
      statueRequest = handlingdata(response);
      if (StatueRequest.Success == statueRequest) {
        print(response);

        if (response["message"] == 'تم تغيير كلمة السر بنجاح') {
          Get.offNamed(
            "/SuccesResetPassWord",
          );
        } else if (response["message"] ==
            'انتهت صلاحية الجلسة، يرجى طلب كود جديد') {
          Get.defaultDialog(middleText: response["message"], title: "311".tr);
          Get.offNamed("/loginsceen");
        } else {
          handleErrorResponse(response);
        }
      } else if (statueRequest == StatueRequest.offline) {
        Get.defaultDialog(
          title: "311".tr,
          middleText: "308".tr,
        );
      } else if (statueRequest == StatueRequest.ServerFaliure) {
        Get.defaultDialog(
          title: "311".tr,
          middleText: "307".tr,
        );
      }
      update();
    }
  }

  Obsecuretextfunction() {
    if (obsecuretext == true) {
      obsecuretext = false;
    } else {
      obsecuretext = true;
    }

    update();
  }

  Obsecuretextfunction2() {
    if (obsecuretext2 == true) {
      obsecuretext2 = false;
    } else {
      obsecuretext2 = true;
    }

    update();
  }

  void handleErrorResponse(Map response) {
    iserroredtextemail = false;
    errortextpassword = false;
    // ispasswordError = false;

    if (response["errors"] != null) {
      Map errors = response["errors"];

      if (errors["email"] != null) {
        errortextemail = errors["email"].join(", ");
        iserroredtextemail = true;
      }

      if (errors["password"] != null) {
        passwordError = errors["password"].join(", ");
        errortextpassword = true;
        print("Password error: $passwordError");
      }

      update();
    } else {
      Get.defaultDialog(
        title: "Warning",
        middleText: "An unknown error occurred.",
      );
    }
  }

  @override
  void onInit() {
    Email = Get.arguments["email"];
    // vertficationcode = Get.arguments["vertficationcode"];
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
