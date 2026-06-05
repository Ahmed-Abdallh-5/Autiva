import 'dart:io';

import 'package:autiva/core/classes/crud.dart';
import 'package:get/get.dart';

import '../../../services/settingservices.dart';

class Uploadvideoapi {
  CRUD crud;
  Settingservices settingservices = Get.find();
  Uploadvideoapi(this.crud);
  uploadvideo(File file, String id) async {
    var response = await crud.uploadMediaRequest(
        "http://autiva2.runasp.net/api/Analysis/analyze/$id", file,
        token: settingservices.sharedPref.getString("token"),
        id: id,
        fieldName: 'video');
    return response.fold((l) => l, (r) => r);
  }
}
