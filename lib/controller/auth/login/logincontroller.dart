import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/classes/statuerequest.dart';
import '../../../core/funtions/handlingdata.dart';

import '../../../core/model/apis/auth/login/login.dart';
import '../../../core/services/settingservices.dart';

abstract class Logincontrolller extends GetxController {
  login();

  Obsecuretextfunction();
}

class Logincontrollerimp extends Logincontrolller {
  final formKeylogin = GlobalKey<FormState>();

  var status;
  late TextEditingController email;
  late TextEditingController Password;
  bool obsecuretext = true;
  bool iserroredtextemail = false;
  bool errortextpassword = false;
  String errortextemail = "";
  String passwordError = "";
  Login loginfun = Login(Get.find());
  StatueRequest? statueRequest;
  Settingservices settingservices = Get.find();

  login() async {
    // print("object");
    if (formKeylogin.currentState!.validate()) {
      statueRequest = StatueRequest.loading;
      update();
      // print("object");
      var response = await loginfun.Sendingdata(
        email.text,
        Password.text,
      );

      statueRequest = handlingdata(response);
      print(response);
      print("object");
      if (StatueRequest.Success == statueRequest) {
        if (response["message"] == 'Please verify your email first') {
          Get.toNamed("/VertficationscreenSignUp",
              arguments: {"email": email.text});
        } else {
          settingservices.sharedPref.setString("username", response['name']);

          settingservices.sharedPref.setString("role", response['email']);

          settingservices.sharedPref.setString("token", response['token']);
          settingservices.sharedPref.setString("Step", "2");

          Get.offAllNamed("/childDataScreen");
        }
      } else if (statueRequest == StatueRequest.offline) {
        Get.defaultDialog(
          title: "53".tr,
          middleText: "308".tr,
        );
      } else if (statueRequest == StatueRequest.unauthenticated) {
        Get.defaultDialog(
          title: "53".tr,
          middleText: "54".tr,
        );
      } else if (statueRequest == StatueRequest.ServerFaliure) {
        Get.defaultDialog(
          title: "53".tr,
          middleText: "307".tr,
        );
      }

      update();
    }
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

  gotoforgetpassword() {
    Get.offAllNamed("/forgetpassword");
  }

  Obsecuretextfunction() {
    if (obsecuretext == true) {
      obsecuretext = false;
    } else {
      obsecuretext = true;
    }

    update();
  }

  @override
  void onInit() {
    settingservices.sharedPref.setString("Step", "1");

    email = TextEditingController();
    Password = TextEditingController();
    super.onInit();
  }
}
