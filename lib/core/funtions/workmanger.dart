// import 'package:ecommerce/core/funtions/notfications.dart';
// import 'package:workmanager/workmanager.dart';

// class WorkMangerClass {
//   intial() async {
//     await Workmanager().initialize(
//         actionfunction, // The top level function, aka callbackDispatcher
//         isInDebugMode:
//             true // If enabled it will post a notification whenever the task is running. Handy for debugging tasks
//         );

//     registertask();
//   }

//   static actionfunction() async {
//     Workmanager().executeTask((taskName, inputData) {
//       Notfications.Showbasicnotfication();

//       return Future.value(true);
//     });
//   }

//   static registertask() async {
//     await Workmanager().registerOneOffTask("id1", "notfications");
//   }
// }
