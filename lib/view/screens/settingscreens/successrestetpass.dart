// import 'package:ecommerce/controller/authcontroller/forgetpassword/successpasswordreset.dart';
// import 'package:ecommerce/controller/authcontroller/resetpasssetting/successresetpass.dart';
// import 'package:ecommerce/core/constans/constansappvalues.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/appbartext.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/bodysmallauth.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/haedline2.dart';
// import 'package:ecommerce/view/widget/sharedwidgets/sharedbuttom.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class SuccesResetPassWordSettingPage extends StatelessWidget {
//   const SuccesResetPassWordSettingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double ScreenWidth = MediaQuery.of(context).size.width;
//     double ScreenHight = MediaQuery.of(context).size.height;

//     SuccessResetPswwordSettingPageConimpl controller =
//         Get.put(SuccessResetPswwordSettingPageConimpl());
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         centerTitle: true,
//         title: Appbartext(appbartext: "45".tr),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: ScreenHight * .04,
//           ),
//           Center(
//             child: Icon(
//               Icons.check_circle_outline,
//               size: ScreenHight * .3,
//               color: Get.isDarkMode
//                   ? AppConstans.maincolordarktheme
//                   : AppConstans.maincolorlighttheme,
//             ),
//           ),
//           SizedBox(
//             height: ScreenHight * .05,
//           ),
//           AuthHeadLinesmall(authheadline: "46".tr),
//           SizedBox(
//             height: ScreenHight * .03,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: ScreenWidth * 0.01),
//             child: BodyAuth(authheadline: "47".tr),
//           ),
//           SizedBox(
//             height: 70,
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: ScreenWidth * 0.04),
//             child: Sharedbuttom(
//               text: "48".tr,
//               hight: 50,
//               onpreesed: () {
//                 controller.GoTOHome();
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
