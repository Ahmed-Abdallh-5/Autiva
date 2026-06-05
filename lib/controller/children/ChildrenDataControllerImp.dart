import 'package:get/get.dart';

import '../../core/classes/statuerequest.dart';
import '../../core/funtions/handlingdata.dart';
import '../../core/model/apis/child/childhostory.dart';

abstract class ChildrenDataController extends GetxController {}

class ChildrenDataControllerhistoryImp extends ChildrenDataController {
  StatueRequest? statueRequest;

  GetChildhistory getChildhistory = GetChildhistory(Get.find());

  List assessments = [];

  getchildreninfo() async {
    statueRequest = StatueRequest.loading;
    update();

    var response = await getChildhistory.getdata();

    statueRequest = handlingdata(response);

    if (statueRequest == StatueRequest.Success) {
      assessments = response['assessments'] ?? [];
    } else if (statueRequest == StatueRequest.offline) {
      Get.defaultDialog(
        title: "Error",
        middleText: "No Internet",
      );
    } else {
      Get.defaultDialog(
        title: "Error",
        middleText: "Server Error",
      );
    }

    update();
  }

  @override
  void onInit() {
    getchildreninfo();
    super.onInit();
  }
}
