import 'package:autiva/core/services/settingservices.dart';
import 'package:get/get.dart';

import '../../../classes/crud.dart';
import '../../../constans/links/links.dart';

class GetChildData {
  CRUD crud;
  GetChildData(this.crud);
  Settingservices settingservices = Get.find();
  getdata() async {
    var response = await crud.getdata(APPlinks.childdata, {},
        token: settingservices.sharedPref.getString("token"));
    return response.fold((l) => l, (r) => r);
  }
}
