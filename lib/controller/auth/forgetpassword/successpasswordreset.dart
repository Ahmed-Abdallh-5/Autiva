import 'package:get/get.dart';

abstract class SuccessResetPswword extends GetxController {
  GoTOLogin();
}

class SuccessResetPswwordimpl extends SuccessResetPswword {
  GoTOLogin() {
    Get.offAllNamed("/loginsceen");
  }
}
