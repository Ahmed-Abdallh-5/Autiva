// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:shimmer/shimmer.dart';
// import 'package:ecommerce/core/constans/constansappvalues.dart';

// class HandlingVieweditprofile extends StatelessWidget {
//   const HandlingVieweditprofile({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: AppConstans.Width * 0.05),
//         child: Shimmer.fromColors(
//           baseColor: Get.isDarkMode ? Colors.white12 : Colors.grey.shade300,
//           highlightColor:
//               Get.isDarkMode ? Colors.white24 : Colors.grey.shade100,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: AppConstans.Hight * 0.03),
//               Row(
//                 children: [
//                   CircleAvatar(
//                     radius: AppConstans.Hight * 0.05,
//                     backgroundColor: Colors.grey,
//                   ),
//                   SizedBox(width: AppConstans.Width * 0.05),
//                   Expanded(
//                     child: Container(
//                       height: AppConstans.Hight * 0.02,
//                       color: Colors.grey,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: AppConstans.Hight * 0.03),
//               Container(
//                 height: AppConstans.Hight * 0.3,
//                 decoration: BoxDecoration(
//                   color: Get.isDarkMode ? Colors.black26 : Colors.white,
//                   borderRadius: BorderRadius.circular(AppConstans.Radious),
//                   border: Border.all(
//                     color: Get.isDarkMode ? Colors.grey : Colors.black12,
//                   ),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(AppConstans.Width * 0.04),
//                   child: Column(
//                     children: [
//                       Spacer(),
//                       Container(
//                         height: AppConstans.Hight * 0.02,
//                         width: AppConstans.Width * 0.5,
//                         color: Colors.grey,
//                       ),
//                       Spacer(),
//                       Container(
//                         height: AppConstans.Hight * 0.05,
//                         width: AppConstans.Width * 0.8,
//                         color: Colors.grey,
//                       ),
//                       Spacer(),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
