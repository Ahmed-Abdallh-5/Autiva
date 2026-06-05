import 'package:autiva/controller/settingcon/changelanguagesettingpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/classes/statuerequest.dart';
import '../../core/funtions/handlingdata.dart';
import '../../core/model/apis/setting/settings.dart';
import '../../core/services/settingservices.dart';

abstract class SettingscreenCon extends GetxController {
  bool ChangeSwitcherButtonDarkLight(bool IsSwitched);
  void SwitchDarkMode(BuildContext context);
  // bool ChangeSwitcherButtonNotfications(bool newSwitchedNotiyValue);
  ChangeingLanguage();
  GoToEditprofile();
  // notficationSwitcher(bool newval);
  Gotochangecountry();
}

class Settingscreenimble extends SettingscreenCon {
  SettingFunction setting = SettingFunction(Get.find());
  StatueRequest? statueRequest;
  bool IsSwitched = false;
  bool? IsSwitchedNotfications;
  List<String> langlist = ["English", "Arabic"];
  List<String> langlistarabic = ["العربية", "الأنجليزية"];
  Settingservices settingservices = Get.find();
  LangcontrollerSettingPage langcontrollerSettingPage =
      Get.put(LangcontrollerSettingPage());
  @override
  void Delete() async {
    statueRequest = StatueRequest.loading;
    update();
    var response = await setting.Deletefun();
    statueRequest = handlingdata(response);
    if (StatueRequest.deletedsuccess == statueRequest) {
      print("response");

      // await settingservices.storage.deleteAll();
      // await deleteAccount();
      settingservices.sharedPref.clear();
      Get.offAllNamed('/chooselangscreen');
    } else if (statueRequest == StatueRequest.offline) {
      Get.defaultDialog(
        title: "311".tr,
        middleText: "308".tr,
      );
    } else if (statueRequest == StatueRequest.unauthenticated) {
      Get.back();
      Get.defaultDialog(
        title: "311".tr,
        middleText: "361".tr,
      );
    } else if (statueRequest == StatueRequest.ServerFaliure) {
      Get.defaultDialog(
        title: "311".tr,
        middleText: "307".tr,
      );
    }

    update();
  }

  // Get.offAllNamed("/SuccesResetPassWord");

  GoToEditResetPaswword() {
    Get.toNamed("/forgetpassword");
  }

  Future<void> deleteAccount() async {}

  GoToDeleteaccount() async {
    // await logoutGoogle();
    // await deleteAccount();
    await settingservices.sharedPref.clear();

    Get.toNamed("/deleteAccountScreen");
  }

  GoToEditprofile() {
    Get.toNamed("/editProfleScreen");
  }

  GotochildrenHistory() {
    Get.toNamed("/childHistoryScreen");
  }

  ChangeingLanguage() {
    if (settingservices.sharedPref.getString("lang") == "ar") {
      langcontrollerSettingPage.changelang("en");
      update();
      Get.back();
    } else {
      langcontrollerSettingPage.changelang("ar");
      update();
      Get.back();
    }
  }

  @override
  bool ChangeSwitcherButtonDarkLight(bool newIsSwitched) {
    IsSwitched = newIsSwitched;

    settingservices.sharedPref.setBool("IsSwitched", newIsSwitched);
    update();
    return IsSwitched;
  }

  @override
  @override
  void SwitchDarkMode(BuildContext context) {
    bool isDarkMode = settingservices.sharedPref.getBool("IsSwitched") ?? false;

    Get.changeThemeMode(isDarkMode ? ThemeMode.dark : ThemeMode.light);
    update();
  }

  logout() async {
    statueRequest = StatueRequest.loading;
    update();
    var response = await setting.Logout();
    statueRequest = handlingdata(response);
    if (StatueRequest.Success == statueRequest) {
      print(response);
      if (response['message'] == 'User logged out successfully') {
        settingservices.sharedPref.setString("Step", "1");

        Get.offAllNamed("/loginsceen");
      }
    } else if (statueRequest == StatueRequest.offline) {
      Get.defaultDialog(
        title: "311".tr,
        middleText: "308".tr,
      );
    } else if (statueRequest == StatueRequest.ServerFaliure) {
      Get.defaultDialog(
        title: "311".tr,
        middleText: "307".tr,
      );
    }

    update();
  }

  @override
  void onInit() {
    IsSwitchedNotfications =
        settingservices.sharedPref.getBool("IsSwitchedNotficationss");
    print(IsSwitchedNotfications);
    super.onInit();
  }

  @override
  Gotochangecountry() {
    // TODO: implement Gotochangecountry
    throw UnimplementedError();
  }
}
