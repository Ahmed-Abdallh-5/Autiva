import 'dart:async';

import 'package:get/get.dart';

import '../../../core/classes/statuerequest.dart';
import '../../../core/funtions/handlingdata.dart';
import '../../../core/model/apis/auth/forgetpassword/resendcode.dart';
import '../../../core/model/apis/auth/forgetpassword/verficationcoderesetpass.dart';

abstract class VerficationController extends GetxController {
  void confirmCode(String verificationCode);
}

class VerficationControllerimple extends VerficationController {
  String? vertficationcode;
  bool enable = false;
  String? Email;
  late Timer _timer;
  bool isbuttomenable = true;
  int timersecomds = 30;
  ForgetPasswordVertdicationCode vertifyp =
      ForgetPasswordVertdicationCode(Get.find());
  ResendVertficationCodeForgetpassword resendVertficationCodeForgetpassword =
      ResendVertficationCodeForgetpassword(Get.find());
  StatueRequest? statueRequest;
  void confirmCode(verificationCode) async {
    statueRequest = StatueRequest.loading;
    update();
    var response = await vertifyp.Sendingdata(Email!, verificationCode);
    statueRequest = handlingdata(response);
    if (StatueRequest.Success == statueRequest) {
      print(response);

      if (response["message"] == "تم التحقق من الكود بنجاح") {
        Get.toNamed("/resetpassword",
            arguments: {"email": Email, "vertficationcode": vertficationcode});
      } else {
        Get.defaultDialog(middleText: "58".tr, title: "311".tr);
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
    var response =
        await resendVertficationCodeForgetpassword.Resenddata(Email!);
    statueRequest = handlingdata(response);
    if (StatueRequest.Success == statueRequest) {
      print(response);

      if (response["message"] == "We've sent a new OTP to you") {
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

      // Start the 30-second countdown timer
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
    vertficationcode = code;
    enable = code.length == 4;
    update();
  }

  @override
  void onInit() {
    Email = Get.arguments['email'];
    // vertficationcode = Get.arguments['vertficationcode'];
    super.onInit();
  }
}
