import 'package:get/get.dart';

import '../../../core/model/apis/home/videoresult.dart';

abstract class ResultPage extends GetxController {}

class ResultPagecon extends ResultPage {
  VideoResult? videoResult;
  @override
  void onInit() {
    super.onInit();
    videoResult = Get.arguments['result'] as VideoResult?;
  }
}
