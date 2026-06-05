// import 'package:ecommerce/controller/settingcon/settingscreen.dart';
// import 'package:ecommerce/core/constans/constansappvalues.dart';
// import 'package:ecommerce/core/constans/textstyles/text.dart';
// import 'package:ecommerce/core/services/settingservices.dart';
// import 'package:ecommerce/view/screens/settingscreens/settingscreentext.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/appbartext.dart';
// import 'package:ecommerce/view/widget/dialougchoicebuttoms.dart';
// import 'package:ecommerce/view/widget/settingwidget/Accountdetails.dart';
// import 'package:ecommerce/view/widget/settingwidget/arrowswitcher.dart';
// import 'package:ecommerce/view/widget/settingwidget/iconrow.dart';
// import 'package:ecommerce/view/widget/settingwidget/notifycationswitcher.dart';
// import 'package:ecommerce/view/widget/settingwidget/switchercontainer.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SettingScreeneScreen extends StatelessWidget {
//   const SettingScreeneScreen({super.key, this.onPressed});
//   final void Function()? onPressed;

//   @override
//   Widget build(BuildContext context) {
//     Settingservices settingservices = Get.find();
//     Settingscreenimble settingscreenimble = Get.put(Settingscreenimble());

//     return GetBuilder<Settingscreenimble>(
//       builder: (settingscreenimble) => Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Appbartext(appbartext: "85".tr),
//           leading: Icon(Icons.arrow_back_ios),
//         ),
//         body: Padding(
//           padding: EdgeInsets.symmetric(
//               horizontal: AppConstans.PaddingHorizontalAuth),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(
//                   height: AppConstans.Hight * .08,
//                 ),
//                 Text(
//                   "85".tr,
//                   style: TextStyleClass.getTextStyle(
//                     "Bold",
//                     AppConstans.Width / 12.5,
//                   ),
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 SettingScreenText(
//                   text: "86".tr,
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .03,
//                 ),
//                 AccountDetails(
//                   onPressed: () {
//                     settingscreenimble.GoToEditprofile();
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 SettingScreenText(
//                   text: "87".tr,
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 RowContainer(
//                   downbuttom: false,
//                   iconData: Icons.language,
//                   color: Colors.red.shade200,
//                   title: "88".tr,
//                   title2:
//                       settingservices.sharedPref.getString("chosenlanguage"),
//                   ontap: () {
//                     Get.toNamed("/changeLangScreen");
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .035,
//                 ),
//                 RowContainer(
//                   downbuttom: false,
//                   iconData: Icons.location_pin,
//                   color: Color.fromARGB(255, 29, 141, 145),
//                   title: "89".tr,
//                   title2: settingservices.sharedPref.getString("countryname"),
//                   ontap: () {
//                     settingscreenimble.Gotochangecountry();
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .035,
//                 ),
//                 RowContainer(
//                   downbuttom: false,
//                   iconData: Icons.lock_outlined,
//                   color: Color.fromARGB(255, 136, 53, 161),
//                   title: "90".tr,
//                   title2: "",
//                   ontap: () {
//                     settingscreenimble.GoToEditResetPaswword();
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .035,
//                 ),
//                 ArrowContainer(
//                   iconData: Icons.dark_mode,
//                   color: Color.fromARGB(255, 48, 117, 220),
//                   title: "91".tr,
//                   title2: "",
//                   activeColor: Color.fromARGB(255, 48, 117, 220),
//                   value:
//                       settingservices.sharedPref.getBool("IsSwitched") == null
//                           ? settingscreenimble.IsSwitched
//                           : settingservices.sharedPref.getBool("IsSwitched")!,
//                   onChanged: (value) {
//                     settingscreenimble.ChangeSwitcherButtonDarkLight(value);
//                     settingscreenimble.SwitchDarkMode(context);
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .035,
//                 ),
//                 ArrowContainer(
//                   iconData: Icons.notifications_outlined,
//                   color: Color.fromARGB(255, 225, 54, 39),
//                   title: "92".tr,
//                   title2: "",
//                   activeColor: Color.fromARGB(255, 220, 48, 71),
//                   value: settingservices.sharedPref
//                       .getBool("${settingscreenimble.IsSwitchedNotfications}")!,
//                   onChanged: (value) {
//                     settingscreenimble.notficationSwitcherFunction(
//                         value, "id1");
//                     print(settingservices.sharedPref.getBool(
//                         "${settingscreenimble.IsSwitchedNotfications}"));
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 SettingScreenText(text: "102".tr),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 RowContainer(
//                   downbuttom: false,
//                   iconData: Icons.help,
//                   color: Color.fromARGB(255, 194, 33, 209),
//                   title: "93".tr,
//                   title2: "",
//                   ontap: () {
//                     Get.toNamed("/aboutUsScreen");
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 RowContainer(
//                   downbuttom: false,
//                   iconData: Icons.privacy_tip_outlined,
//                   color: Color.fromARGB(255, 27, 170, 86),
//                   title: "94".tr,
//                   title2: "",
//                   ontap: () {
//                     Get.toNamed("/privacyScreen");
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 RowContainer(
//                   downbuttom: false,
//                   iconData: Icons.text_snippet,
//                   color: Color.fromARGB(255, 124, 76, 201),
//                   title: "95".tr,
//                   title2: "",
//                   ontap: () {
//                     Get.toNamed("/termsAndConditionsScreen");
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 SettingScreenText(
//                   text: "96".tr,
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 RowContainer(
//                   downbuttom: false,
//                   iconData: Icons.exit_to_app,
//                   color: Color.fromARGB(255, 94, 96, 97),
//                   title: "97".tr,
//                   title2: "",
//                   ontap: () {
//                     Get.defaultDialog(
//                       radius: 20,
//                       title: "98".tr,
//                       titleStyle: TextStyleClass.getTextStyle(
//                           "Bold", AppConstans.Width / 18),
//                       middleText: "",
//                       confirm: Padding(
//                         padding: EdgeInsets.only(
//                             bottom: 20.0), // Add bottom padding here
//                         child: DialougButtom(
//                           buttomcolor: AppConstans.themecolor,
//                           width: 120,
//                           text: "99".tr,
//                           hight: 40,
//                           onpreesed: () {
//                             settingscreenimble.logout();
//                           },
//                         ),
//                       ),
//                       cancel: Padding(
//                         padding: EdgeInsets.only(
//                             bottom: 20.0), // Add bottom padding here
//                         child: DialougButtom(
//                           width: 120,
//                           buttomcolor: AppConstans.themecolor,
//                           text: "100".tr,
//                           hight: 40,
//                           onpreesed: () {
//                             Get.back();
//                           },
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//                 RowContainer(
//                   downbuttom: false,
//                   iconData: Icons.delete_rounded,
//                   color: Color.fromARGB(255, 94, 96, 97),
//                   title: "101".tr,
//                   title2: "",
//                   ontap: () {
//                     settingscreenimble.GoToDeleteaccount();
//                   },
//                 ),
//                 SizedBox(
//                   height: AppConstans.Hight * .04,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
