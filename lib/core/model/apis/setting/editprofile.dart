import 'dart:io';

import 'package:get/get.dart';

import '../../../classes/crud.dart';
import '../../../constans/links/links.dart';
import '../../../services/settingservices.dart';

class EditProfile {
  CRUD crud;
  EditProfile(this.crud);
  Settingservices settingservices = Get.find();

  getmyfavourite() async {
    var response = await crud.getdata(APPlinks.Home2, {},
        token: await settingservices.sharedPref.getString("token"));

    return response.fold((l) => l, (r) => r);
  }

  // uploaduserimage2(
  //   File imagepath,
  // ) async {
  //   var response = await crud.uploadImageRequest(
  //       APPlinks.EditProfilephoto, imagepath,
  //       token: await settingservices.sharedPref.getString("token"));

  //   return response.fold((l) => l, (r) => r);
  // }

/////////////////////////XXXXXXXXXXXXXXXXXXXXXX////////////////////
  // uploaduserimage(String imagepath, String base64) async {
  //   var response = await crud.postdata(
  //       "https://webhook.site/0932871c-2208-4648-b478-0389dffc440f",
  //       {'imagepath': imagepath, 'base64': base64},
  //       token: settingservices.sharedPref.getString('token'));
  //   return response.fold((l) => l, (r) => r);
  // }

////////////////////////XXXXXXXXXXXXXXXXXXXX//////////////////////////
  editphone(String phone) async {
    var response = await crud.postdata(
        APPlinks.EditProfileusername,
        {
          'phone': phone,
        },
        token: await settingservices.sharedPref.getString("token"));

    return response.fold((l) => l, (r) => r);
  }
////////////////////////XXXXXXXXXXXXXXXXXXXX//////////////////////////

  // changeuserinfo({
  //   String? name,
  // }) async {
  //   var response = await crud.testPatchfunc(
  //       APPlinks.EditProfilephoto,
  //       {
  //         'name': name,
  //         /*'phone' : phone*/
  //       },
  //       token: await settingservices.sharedPref.getString("token"));

  //   return response.fold((l) => l, (r) => r);
  // }
}
