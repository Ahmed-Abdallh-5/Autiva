import 'dart:async';

import 'package:get/get.dart';

import '../../../core/classes/statuerequest.dart';
import '../../../core/funtions/handlingdata.dart';
import '../../../core/model/apis/auth/signup/resendcode.dart';
import '../../../core/model/apis/auth/signup/vertfication.dart';

abstract class VerficationControllerSignUP extends GetxController {
  void confirmCode(String verificationCode);
  void GOtoSuccessSIGNUP();
  void backtosignup();
}

class VerficationControllerSignUPimple extends VerficationControllerSignUP {
  late Timer _timer;
  bool isbuttomenable = true;
  String errormessage = "";
  String? email;
  VertficationCodeSignUpsending vertifyp =
      VertficationCodeSignUpsending(Get.find());
  bool enable = false;
  String? verificationCode;
  StatueRequest? statueRequest;
  int timersecomds = 30;
  ResendVertficationCode resendVertficationCode =
      ResendVertficationCode(Get.find());
  void confirmCode(verificationCode) async {
    statueRequest = StatueRequest.loading;
    update();
    var response = await vertifyp.Sendingdata(email!, verificationCode);
    statueRequest = handlingdata(response);
    if (StatueRequest.Success == statueRequest) {
      print(response);

      if (response["message"] == 'Email verified successfully') {
        Get.toNamed("/SuccesSignUP");
      } else {
        Get.defaultDialog(middleText: response["message"], title: "311".tr);
        enable = false;
      }
    }
    // } else if (response["message"] == 'message') {
    //   Get.defaultDialog(
    //     title: "57".tr,
    //   );
    // }
    update();
  }

  void ResendCode() async {
    statueRequest = StatueRequest.loading;
    update();
    var response = await resendVertficationCode.Resenddata(email!);
    statueRequest = handlingdata(response);
    if (StatueRequest.Success == statueRequest) {
      print(response);

      if (response["message"] == "New verification code sent") {
      } else {
        Get.defaultDialog(middleText: response["message"], title: "311".tr);
      }
    }
    // } else if (response["message"] == 'message') {
    //   Get.defaultDialog(
    //     title: "57".tr,
    //   );
    // }
    update();
  }

  void Timerfunc() {
    if (isbuttomenable) {
      isbuttomenable = false;
      update();

      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        if (timersecomds > 0) {
          timersecomds--;
          update();
          print(timersecomds);
        } else {
          _timer.cancel();
          isbuttomenable = true;
          timersecomds = 30;
          print("Timer ended. Button re-enabled.");
          update();
        }
        update();
      });
    }
  }

  void updateVerificationCode(String code) {
    verificationCode = code;
    enable = code.length == 4;
    update();
  }

  GOtoSuccessSIGNUP() {
    Get.offAllNamed("/SuccesSignUP");
  }

  backtosignup() {
    Get.offNamed("/signup");
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
