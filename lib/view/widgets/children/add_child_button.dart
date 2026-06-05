// import 'package:flutter/material.dart';

// class AddChildButton extends StatelessWidget {
//   final VoidCallback onTap;

//   const AddChildButton({
//     super.key,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 120,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           border: Border.all(
//             color: const Color(0xff1C8EA3),
//           ),
//         ),
//         child: const Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 22,
//               backgroundColor: Color(0xff1C8EA3),
//               child: Icon(
//                 Icons.add,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               "Add New Child",
//               style: TextStyle(
//                 color: Color(0xff1C8EA3),
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
