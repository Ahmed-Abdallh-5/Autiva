import 'package:autiva/view/widgets/home/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/settingcon/settingscreen.dart';
import '../../../core/constans/constansappvalues.dart';
import '../../../core/services/settingservices.dart';
import '../../widgets/settingwidget/iconsetting.dart';

class SettingScreeneScreen extends StatelessWidget {
  const SettingScreeneScreen({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    Settingservices settingservices = Get.find();
    Settingscreenimble settingscreenimble = Get.put(Settingscreenimble());

    return GetBuilder<Settingscreenimble>(
      builder: (settingscreenimble) => Scaffold(
        extendBodyBehindAppBar: true,
        body: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView(
            children: [
              HomeHeader(
                name: "86".tr,
                desc: '85'.tr,
              ),
              SizedBox(height: AppConstans.distanceapppar),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppConstans.PaddingHorizontalAuth),
                child: Column(
                  children: [
                    Container(
                      height: AppConstans.Hight * .35,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? AppConstans.secondblackcolor
                            : const Color.fromARGB(255, 255, 253, 255),
                        borderRadius:
                            BorderRadius.circular(AppConstans.Radious),
                        border: Border.all(
                          color: Get.isDarkMode == false
                              ? AppConstans.Bordercolor
                              : AppConstans.darkgreycolor,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppConstans.PaddingHorizontalAuth),
                        child: Column(
                          children: [
                            SizedBox(height: AppConstans.Hight * .022),
                            // IconSetting(
                            //   onTap: () {
                            //     settingscreenimble.GoToEditprofile();
                            //   },
                            //   istrashed: false,
                            //   image: "images/User Rounded.png",
                            //   switcher: false,
                            //   text: "104".tr,
                            // ),
                            // SizedBox(height: AppConstans.Hight * .022),
                            IconSetting(
                              onTap: () {
                                settingscreenimble.GotochildrenHistory();
                              },
                              istrashed: false,
                              image: "images/baby-boy.png",
                              switcher: false,
                              text: "104".tr,
                            ),
                            SizedBox(height: AppConstans.Hight * .022),
                            IconSetting(
                              onTap: () {
                                settingscreenimble.ChangeingLanguage();
                              },
                              isrowed: true,
                              istrashed: false,
                              image: "images/Global.png",
                              rowtext: settingservices.sharedPref
                                          .getString("lang") ==
                                      "ar"
                                  ? "العربية"
                                  : "English",
                              switcher: false,
                              text: "88".tr,
                            ),
                            SizedBox(height: AppConstans.Hight * .022),
                            IconSetting(
                              onTap: () {
                                settingscreenimble.GoToEditResetPaswword();
                              },
                              istrashed: false,
                              image: "images/Lock.png",
                              switcher: false,
                              text: "90".tr,
                            ),
                            SizedBox(height: AppConstans.Hight * .022),
                            IconSetting(
                              icon: Icons.light_mode_outlined,
                              activeColor: AppConstans.primary,
                              value: settingservices.sharedPref
                                          .getBool("IsSwitched") ==
                                      null
                                  ? settingscreenimble.IsSwitched
                                  : settingservices.sharedPref
                                      .getBool("IsSwitched")!,
                              onChanged: (value) {
                                settingscreenimble
                                    .ChangeSwitcherButtonDarkLight(value);
                                settingscreenimble.SwitchDarkMode(context);
                              },
                              istrashed: false,
                              image: "images/Moon.png",
                              switcher: true,
                              text: "91".tr,
                            ),
                            SizedBox(height: AppConstans.Hight * .022),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: AppConstans.Hight * .025),
                    Container(
                      height: AppConstans.Hight * .15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Get.isDarkMode
                            ? AppConstans.secondblackcolor
                            : const Color.fromARGB(255, 255, 253, 255),
                        borderRadius:
                            BorderRadius.circular(AppConstans.Radious),
                        border: Border.all(
                          color: Get.isDarkMode == false
                              ? AppConstans.Bordercolor
                              : AppConstans.darkgreycolor,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppConstans.PaddingHorizontalAuth),
                        child: Column(
                          children: [
                            SizedBox(height: AppConstans.Hight * .02),
                            IconSetting(
                              onTap: () {
                                Get.toNamed('/aboutUsScreen');
                              },
                              image: "images/Question Circle.png",
                              switcher: false,
                              text: "93".tr,
                            ),
                            SizedBox(height: AppConstans.Hight * .022),
                            IconSetting(
                              onTap: () {
                                Get.toNamed('/privacyScreen');
                              },
                              image: "images/Shield Warning.png",
                              switcher: false,
                              text: "94".tr,
                            ),
                            // SizedBox(height: AppConstans.Hight * .022),
                            // IconSetting(
                            //   onTap: () {
                            //     Get.toNamed('/termsAndConditionsScreen');
                            //   },
                            //   image: "images/File Text.png",
                            //   switcher: false,
                            //   text: "95".tr,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: AppConstans.Hight * .025),
                    Container(
                      height: AppConstans.Hight * .15,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Get.isDarkMode
                            ? AppConstans.secondblackcolor
                            : const Color.fromARGB(255, 255, 253, 255),
                        borderRadius:
                            BorderRadius.circular(AppConstans.Radious),
                        border: Border.all(
                          color: Get.isDarkMode == false
                              ? AppConstans.Bordercolor
                              : AppConstans.darkgreycolor,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppConstans.PaddingHorizontalAuth),
                        child: Column(
                          children: [
                            SizedBox(height: AppConstans.Hight * .022),
                            IconSetting(
                              onTap: () {
                                settingscreenimble.logout();
                              },
                              isred: true,
                              istrashed: true,
                              image: "images/Logout 2.png",
                              switcher: false,
                              text: "97".tr,
                            ),
                            SizedBox(height: AppConstans.Hight * .022),
                            IconSetting(
                              onTap: () {
                                settingscreenimble.Delete();
                              },
                              isred: true,
                              istrashed: true,
                              image: "images/Trash Bin 2.png",
                              switcher: false,
                              text: "96".tr,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: AppConstans.Hight * .022),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
