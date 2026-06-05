import 'package:get/get.dart';

import '../../core/classes/statuerequest.dart';
import '../../core/funtions/handlingdata.dart';
import '../../core/model/apis/child/getchilddata.dart';

abstract class ChildrenDataController extends GetxController {}

class ChildrenDataControllerImp extends ChildrenDataController {
  StatueRequest? statueRequest;

  GetChildData getChildData = GetChildData(Get.find());

  List childrendata = [];

  int? selectedChildIndex;

  void selectChild(int index) {
    selectedChildIndex = index;
    update();
  }

  Future<void> getchildreninfo() async {
    statueRequest = StatueRequest.loading;
    update();

    var response = await getChildData.getdata();

    statueRequest = handlingdata(response);

    if (statueRequest == StatueRequest.Success) {
      childrendata = response["children"] ?? [];
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
