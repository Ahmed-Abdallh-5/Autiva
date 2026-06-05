import 'package:autiva/core/services/settingservices.dart';
import 'package:get/get.dart';

import '../../../classes/crud.dart';
import '../../../constans/links/links.dart';

class GetChildhistory {
  CRUD crud;
  GetChildhistory(this.crud);
  Settingservices settingservices = Get.find();
  getdata() async {
    var response = await crud.getdata(APPlinks.childhistory, {},
        token: settingservices.sharedPref.getString("token"));
    return response.fold((l) => l, (r) => r);
  }
}
