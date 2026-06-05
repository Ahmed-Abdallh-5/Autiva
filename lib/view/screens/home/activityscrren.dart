import 'package:autiva/view/widgets/home/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home/actcitires/activity.dart';
import '../../widgets/home/activities/activitiescard.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ActivitiesControllerImp controller = Get.put(ActivitiesControllerImp());
    return
        // backgroundColor: const Color(0xFFF2F4F7),

        // floatingActionButton: const _FloatingButton(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        Column(
      children: [
        HomeHeader(
          name: "369".tr,
          desc: '380'.tr,
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
            itemCount: controller.activities.length,
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemBuilder: (context, index) => ActivityCard(
              item: controller.activities[index],
              onTap: () {
                controller.goToActivityDetails(controller.activities[index]);
              },
            ),
          ),
        ),
      ],
    );
  }
}

// class _Header extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final top = MediaQuery.of(context).padding.top;
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.fromLTRB(24, top + 24, 24, 32),
//       decoration: const BoxDecoration(
//         color: Color(0xFF0097A7),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(28),
//           bottomRight: Radius.circular(28),
//         ),
//       ),
//       child: const Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Activities',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 6),
//           Text(
//             'Explore learning and support resources',
//             style: TextStyle(
//               color: Colors.white70,
//               fontSize: 14,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
