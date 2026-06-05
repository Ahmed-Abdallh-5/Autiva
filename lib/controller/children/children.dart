import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/classes/statuerequest.dart';
import '../../core/funtions/handlingdata.dart';
import '../../core/model/apis/child/addchild.dart';
import '../../core/model/apis/child/getchilddata.dart';
import '../../core/services/settingservices.dart';

abstract class ChildrenController extends GetxController {}

class ChildrenControllerImp extends ChildrenController {
  late TextEditingController name;
  late TextEditingController medicalHistory;

  String gender = '';
  DateTime? selectedDate;

  GlobalKey<FormState> formKeylogin = GlobalKey<FormState>();

  StatueRequest? statueRequest;
  Settingservices settingservices = Get.find();

  AddChild addChild = AddChild(Get.find());
  GetChildData getChildData = GetChildData(Get.find());

  Future<void> pickDate(BuildContext context) async {
    DateTime now = DateTime.now();

    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(now.year - 5),
      firstDate: DateTime(2000),
      lastDate: now,
    );

    if (picked != null) {
      selectedDate = picked;
      update();
    }
  }

  addchild() async {
    if (formKeylogin.currentState!.validate()) {
      if (selectedDate == null) {
        Get.snackbar("Error", "Please select date of birth");
        return;
      }

      if (gender.isEmpty) {
        Get.snackbar("Error", "Please select gender");
        return;
      }

      statueRequest = StatueRequest.loading;
      update();

      var response = await addChild.Sendingdata(
        name.text,
        selectedDate!,
        gender,
        medicalHistory.text,
      );

      statueRequest = handlingdata(response);

      if (StatueRequest.Success == statueRequest) {
        if (response["message"] == 'تم إضافة الطفل بنجاح') {
          settingservices.sharedPref.setString("Step", "3");
          Get.offAllNamed("/homescreen");
        }
      } else if (statueRequest == StatueRequest.offline) {
        Get.defaultDialog(title: "Error", middleText: "No Internet");
      } else {
        Get.defaultDialog(title: "Error", middleText: "Server Error");
      }

      update();
    }
  }

  selectGender(String value) {
    gender = value;
    update();
  }

  @override
  void onInit() {
    name = TextEditingController();
    medicalHistory = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    name.dispose();
    medicalHistory.dispose();
    super.onClose();
  }
}
