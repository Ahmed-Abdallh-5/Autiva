import 'package:autiva/core/services/settingservices.dart';
import 'package:get/get.dart';

import '../../../classes/crud.dart';
import '../../../constans/links/links.dart';

class AddChild {
  CRUD crud;
  AddChild(this.crud);
  Settingservices settingservices = Get.find();
  Sendingdata(
      String name, DateTime age, String gender, String medicalHistory) async {
    var response = await crud.postdataAuthhandelingresponse(
        APPlinks.addchild,
        {
          "name": name,
          "gender": gender,
          "dateOfBirth": age.toIso8601String(),
          "medical_history": medicalHistory,
        },
        token: settingservices.sharedPref.getString("token"));
    return response.fold((l) => l, (r) => r);
  }
}
