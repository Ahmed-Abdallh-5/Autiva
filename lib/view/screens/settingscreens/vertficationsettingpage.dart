// import 'package:ecommerce/controller/authcontroller/resetpasssetting/vertfiactioncode.dart';
// import 'package:ecommerce/core/classes/statuerequest.dart';
// import 'package:ecommerce/core/constans/constansappvalues.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/appbartext.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/bodysmallauth.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/haedline2.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
// import 'package:lottie/lottie.dart';

// class VertficationscreenSettingPage extends StatelessWidget {
//   const VertficationscreenSettingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     VerficationSettingPageConimple vertfiycontroller =
//         Get.put(VerficationSettingPageConimple());
//     double ScreenWidth = MediaQuery.of(context).size.width;
//     double ScreenHight = MediaQuery.of(context).size.height;
//     return Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back_ios,
//             ),
//             onPressed: () {
//               Get.back();
//             },
//           ),
//           centerTitle: true,
//           title: Appbartext(appbartext: "33".tr),
//         ),
//         body: GetBuilder<VerficationSettingPageConimple>(
//           builder: (vertfiycontroller) => vertfiycontroller.statueRequest ==
//                   StatueRequest.loading
//               ? Center(
//                   child: Container(
//                       width: ScreenWidth * .15,
//                       height: ScreenHight * .15,
//                       child: Lottie.asset('lottie/loading.json')),
//                 )
//               : Column(
//                   children: [
//                     SizedBox(
//                       height: ScreenHight * .06,
//                     ),
//                     AuthHeadLinesmall(authheadline: "34".tr),
//                     SizedBox(
//                       height: ScreenHight * .03,
//                     ),
//                     Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: ScreenWidth * .05),
//                       child: BodyAuth(authheadline: "35".tr),
//                     ),
//                     SizedBox(
//                       height: ScreenHight * .065,
//                     ),
//                     OtpTextField(
//                       numberOfFields: 5,
//                       borderColor: Get.isDarkMode
//                           ? AppConstans.maincolordarktheme
//                           : AppConstans.maincolorlighttheme,

//                       focusedBorderColor: Get.isDarkMode
//                           ? AppConstans.maincolordarktheme
//                           : AppConstans.maincolorlighttheme,

//                       //set to true to show as box or false to show as dash
//                       showFieldAsBox: true,
//                       //runs when a code is typed in
//                       onCodeChanged: (String code) {
//                         //handle validation or checks here
//                       },
//                       //runs when every textfield is filled
//                       onSubmit: (String verificationCode) {
//                         vertfiycontroller.confirmCode(verificationCode);
//                       }, // end onSubmit
//                     ),
//                   ],
//                 ),
//         ));
//   }
// }
