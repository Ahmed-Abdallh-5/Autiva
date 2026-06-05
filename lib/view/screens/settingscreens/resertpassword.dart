// import 'package:ecommerce/controller/authcontroller/resetpasssetting/resetpassword.dart';
// import 'package:ecommerce/core/classes/statuerequest.dart';
// import 'package:ecommerce/core/funtions/authfunctions/validator.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/appbartext.dart';
// import 'package:ecommerce/view/widget/authwidgets/authtexts/haedline2.dart';
// import 'package:ecommerce/view/widget/authwidgets/textformfield.dart';
// import 'package:ecommerce/view/widget/sharedbuttom.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lottie/lottie.dart';

// class ResetpasswordSettingScreen extends StatelessWidget {
//   const ResetpasswordSettingScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double ScreenWidth = MediaQuery.of(context).size.width;
//     double ScreenHight = MediaQuery.of(context).size.height;
//     ResetpasswordSettingPageimple restcontroller =
//         Get.put(ResetpasswordSettingPageimple());
//     return Form(
//       key: restcontroller.formkey,
//       child: Scaffold(
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           elevation: 0,
//           title: Padding(
//               padding: EdgeInsets.symmetric(horizontal: ScreenWidth * .25),
//               child: Appbartext(appbartext: "36".tr)),
//         ),
//         body: GetBuilder<ResetpasswordSettingPageimple>(
//           builder: (restcontroller) => restcontroller.statueRequest ==
//                   StatueRequest.loading
//               ? Center(
//                   child: Container(
//                       width: ScreenWidth * .15,
//                       height: ScreenHight * .15,
//                       child: Lottie.asset('lottie/loading.json')),
//                 )
//               : ListView(
//                   children: [
//                     SizedBox(
//                       height: 50,
//                     ),
//                     AuthHeadLinesmall(authheadline: "37".tr),
//                     // Padding(
//                     //   padding: const EdgeInsets.symmetric(horizontal: 40),
//                     //   child: BodyAuth(
//                     //       authheadline: "Please Enter Your Email Address To send You"),
//                     // ),
//                     SizedBox(
//                       height: ScreenHight * 0.09,
//                     ),
//                     Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: ScreenWidth * 0.03),
//                       child: Textformfield(
//                           iconsuffix: restcontroller.obsecuretext
//                               ? Icon(Icons.visibility_off_outlined)
//                               : Icon(Icons.visibility),
//                           obscureText: restcontroller.obsecuretext,
//                           showpassword: () {
//                             restcontroller.Obsecuretextfunction();
//                           },
//                           validatorfunc: (val) {
//                             return valditor(
//                                 val!, val!.length, val!.length, "password",
//                                 passval1: restcontroller.password.text,
//                                 passval2: restcontroller.repassword.text);
//                           },
//                           hinttextstring: "38".tr,
//                           icon: Icon(Icons.lock_outline),
//                           textEditingController: restcontroller.password),
//                     ),
//                     SizedBox(
//                       height: ScreenHight * 0.025,
//                     ),
//                     Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: ScreenWidth * 0.03),
//                       child: Textformfield(
//                           iconsuffix: restcontroller.obsecuretext2
//                               ? Icon(Icons.visibility_off_outlined)
//                               : Icon(Icons.visibility),
//                           obscureText: restcontroller.obsecuretext2,
//                           showpassword: () {
//                             restcontroller.Obsecuretextfunction2();
//                           },
//                           validatorfunc: (val) {
//                             return valditor(
//                                 val!, val!.length, val!.length, "password",
//                                 passval1: restcontroller.password.text,
//                                 passval2: restcontroller.repassword.text);
//                           },
//                           hinttextstring: "39".tr,
//                           icon: Icon(Icons.lock_outline),
//                           textEditingController: restcontroller.repassword),
//                     ),

//                     SizedBox(
//                       height: ScreenHight * 0.053,
//                     ),
//                     Padding(
//                       padding:
//                           EdgeInsets.symmetric(horizontal: ScreenWidth * 0.04),
//                       child: Sharedbuttom(
//                         text: "40".tr,
//                         hight: 50,
//                         onpreesed: () {
//                           restcontroller.confirmpassword();
//                         },
//                       ),
//                     )
//                   ],
//                 ),
//         ),
//       ),
//     );
//   }
// }
