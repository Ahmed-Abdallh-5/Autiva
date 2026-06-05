import 'package:autiva/core/constans/constansappvalues.dart';
import 'package:autiva/view/screens/home/games/gamewebviewscreen.dart';
import 'package:autiva/view/widgets/home/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controller/home/actcitires/gamescontroller.dart';

import '../../../widgets/home/games/gamescard.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GamesControllerImpl());

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: Column(
        children: [
          // Purple header
          HomeHeader(
            action: true,
            name: "Games",
            desc: "Fun and educational activities",
            firstcolor: AppConstans.purple,
            secondcolor: const Color.fromARGB(255, 179, 68, 248),
          ),
          // List of game cards
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              itemCount: controller.gameslist.length,
              separatorBuilder: (_, __) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                final game = controller.gameslist[index];
                return Film_GameCard(
                  game: game,
                  onTap: () => Get.to(
                      () => Video_GameWebViewScreen(game: game, isedu: false)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



// class _GamesHeader extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       padding: EdgeInsets.only(
//         top: MediaQuery.of(context).padding.top + 12,
//         left: 20,
//         right: 20,
//         bottom: 28,
//       ),
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xFF7B2FBE), Color(0xFF9C4DCC)],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(28),
//           bottomRight: Radius.circular(28),
//         ),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: () => Get.back(),
//             child: Row(
//               children: const [
//                 Icon(Icons.arrow_back_ios_new_rounded,
//                     color: Colors.white, size: 18),
//                 SizedBox(width: 6),
//                 Text(
//                   'Back',
//                   style: TextStyle(color: Colors.white, fontSize: 15),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 16),
//           const Text(
//             'Games',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 30,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 0.3,
//             ),
//           ),
//           const SizedBox(height: 4),
//           const Text(
//             'Fun and educational activities',
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




