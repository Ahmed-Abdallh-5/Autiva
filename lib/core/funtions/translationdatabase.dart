import 'package:get/get.dart';

import '../services/settingservices.dart';

translationDataBase(ColumAR, ColumEN) {
  Settingservices settingservices = Get.find();

  if (settingservices.sharedPref.getString("lang") == "ar") {
    return ColumAR;
  } else {
    return ColumEN;
  }
}
