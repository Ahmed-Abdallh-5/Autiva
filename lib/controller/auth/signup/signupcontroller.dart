import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/classes/statuerequest.dart';
import '../../../core/funtions/handlingdata.dart';
import '../../../core/model/apis/auth/signup/signup.dart';

abstract class SignUPcontrolller extends GetxController {
  SigUPmethod();
  Gotologin();
  Obsecuretextfunction2();
  Obsecuretextfunction();
}

class SignUPcontrollerimp extends SignUPcontrolller {
  SignUP signup = SignUP(Get.find());
  List data = [];
  StatueRequest? statueRequest;
  bool obsecuretext = true;
  bool obsecuretext2 = true;
  String errortextphone = "";
  String errortextemail = "";
  bool? iserroredtextemail = false;
  bool? iserroredtextphone = false;
  late TextEditingController Email;
  late TextEditingController Password;
  String passwordError = "";
  String text = "";
  late TextEditingController username;
  late TextEditingController phone;
  TextEditingController? confirmPassword;
  GlobalKey<FormState> formstatekey = GlobalKey<FormState>();
  bool ispasswordError = false;
  SigUPmethod() async {
    if (formstatekey.currentState!.validate()) {
      if (Password.text == confirmPassword!.text) {
        statueRequest = StatueRequest.loading;
        update();
        var response = await signup.Sendingdata(
          username.text,
          Email.text,
          Password.text,
          confirmPassword!.text,
        );
        statueRequest = handlingdata(response);

        if (StatueRequest.Success == statueRequest) {
          if (response["message"] ==
                  'User registered successfully. Please verify your email.' ||
              response["message"] ==
                  'A verification code was already sent. Please check your email or wait before requesting a new one.') {
            statueRequest = StatueRequest.loading;

            Get.toNamed("/VertficationscreenSignUp",
                arguments: {"email": Email.text});
          } else {
            Get.defaultDialog(
              title: "error".tr,
              middleText: response["message" ?? "An error occurred."],
            );
          }
          // Get.back();
          update();
        } else if (statueRequest == StatueRequest.ServerFaliure) {
          Get.defaultDialog(
            title: "error".tr,
            middleText: "307".tr,
          );
          update();
        } else if (statueRequest == StatueRequest.ServerFaliure) {
          Get.defaultDialog(
            title: "error".tr,
            middleText: "307".tr,
          );
          update();
        } else if (statueRequest == StatueRequest.offline) {
          Get.defaultDialog(
            title: "error".tr,
            middleText: "308".tr,
          );
          update();
        }
      }
    }
  }

  // void handleErrorResponse(Map response) {
  //   iserroredtextemail = false;
  //   iserroredtextphone = false;
  //   ispasswordError = false;

  //   if (response["errors"] != null) {
  //     Map errors = response["errors"];

  //     if (errors["email"] != null) {
  //       errortextemail = errors["email"].join(", ");
  //       iserroredtextemail = true;
  //     }

  //     if (errors["phone"] != null) {
  //       errortextphone = errors["phone"].join(", ");
  //       iserroredtextphone = true;
  //     }

  //     if (errors["password"] != null) {
  //       passwordError = errors["password"].join(", ");
  //       ispasswordError = true;
  //       print("Password error: $passwordError");
  //     }

  //     update(); // Update the UI after handling errors
  //   } else {
  //     // Handle case if the error format is different or unknown
  //     Get.defaultDialog(
  //       title: "Warning",
  //       middleText: "An unknown error occurred.",
  //     );
  //   }
  // }

  Gotologin() {
    Get.offAllNamed("/loginsceen");
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

  @override
  void onInit() {
    Email = TextEditingController();
    Password = TextEditingController();
    username = TextEditingController();
    confirmPassword = TextEditingController();
    phone = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    Email.dispose();
    Password.dispose();
    username.dispose();
    confirmPassword!.dispose();

    super.dispose();
  }
}
