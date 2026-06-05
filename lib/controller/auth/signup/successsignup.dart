import 'package:get/get.dart';

abstract class SuccessSignUP extends GetxController {
  GoTOLogin();
}

class SuccessSignUPimpl extends SuccessSignUP {
  GoTOLogin() {
    Get.offAllNamed("/loginsceen");
  }
}
