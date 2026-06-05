import 'package:flutter/services.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settingservices extends GetxService {
  late SharedPreferences sharedPref;
  // final storage = FlutterSecureStorage();
  Future<Settingservices> intial() async {
    sharedPref = await SharedPreferences.getInstance();

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return this;
  }
}

Future<void> intialservices() async {
  await Get.putAsync(() => Settingservices().intial());
}
