import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/classes/statuerequest.dart';
import '../../../core/funtions/handlingdata.dart';
import '../../../core/model/apis/auth/forgetpassword/checkemail.dart';

abstract class Forgetpassword extends GetxController {
  void ConfirmEmail();

  void Gobacklogin();
}

class Forgetpasswordimple extends Forgetpassword {
  CheckEmail checkEmail = CheckEmail(Get.find());
  late TextEditingController email;
  GlobalKey<FormState> keyow = GlobalKey<FormState>();
  bool iserroredtextemail = false;
  String errortextemail = "";

  StatueRequest? statueRequest;

  ConfirmEmail() async {
    if (keyow.currentState!.validate()) {
      statueRequest = StatueRequest.loading;
      update();
      var response = await checkEmail.Sendingdata(
        email.text,
      );
      statueRequest = handlingdata(response);
      if (StatueRequest.Success == statueRequest) {
        print(response);

        if (response["message"] ==
            "If the email exists, a reset code has been sent") {
          Get.offNamed("/vertficode", arguments: {"email": email.text});
        } else {
          handleErrorResponse(response);
        }
      } else if (StatueRequest.notfounduser == statueRequest) {
        Get.defaultDialog(
          title: "311".tr,
          middleText: "312".tr,
        );
      } else if (StatueRequest.offline == statueRequest) {
        Get.defaultDialog(
          title: "311".tr,
          middleText: "308".tr,
        );
      } else if (StatueRequest.ServerFaliure == statueRequest) {
        Get.defaultDialog(
          title: "311".tr,
          middleText: "307".tr,
        );
      }
      update();
    }
  }

  void handleErrorResponse(Map response) {
    iserroredtextemail = false;

    // ispasswordError = false;

    if (response["errors"] != null) {
      Map errors = response["errors"];

      if (errors["email"] != null) {
        errortextemail = errors["email"].join(", ");
        iserroredtextemail = true;
      }

      update(); // Update the UI after handling errors
    } else {
      // Handle case if the error format is different or unknown
      Get.defaultDialog(
        title: "Warning",
        middleText: "An unknown error occurred.",
      );
    }
  }

  Gobacklogin() {
    Get.back();
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
