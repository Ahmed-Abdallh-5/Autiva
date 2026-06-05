// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:flutter_timezone/flutter_timezone.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest.dart' as tz;

// class Notfications {
//   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   IntilaizeNotfication() async {
//     InitializationSettings initializationSettings = InitializationSettings(
//         android: AndroidInitializationSettings("@mipmap/ic_launcher"),
//         iOS: DarwinInitializationSettings());
//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: onTap,
//       onDidReceiveBackgroundNotificationResponse: onTap,
//     );
//   }

//   Showbasicnotfication() async {
//     NotificationDetails? notificationDetail = NotificationDetails(
//         android: AndroidNotificationDetails(
//       "id 1",
//       "basic notfications",
//       priority: Priority.high,
//       icon: 'notification_icon',
//       importance: Importance.max,
//     ));
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       "Padel",
//       "Exclusive offers await! Open the app now to discover amazing deals.",
//       notificationDetail,
//     );
//   }

//   CancelNotfication() async {
//     await flutterLocalNotificationsPlugin.cancelAll();
//   }

//   ShowRepetednotfication() async {
//     NotificationDetails? notificationDetail = NotificationDetails(
//         android: AndroidNotificationDetails(
//       "id 1",
//       "basic notfications",
//       icon: 'notification_icon',
//       priority: Priority.high,
//       importance: Importance.max,
//     ));
//     await flutterLocalNotificationsPlugin.periodicallyShow(
//         1,
//         "Padel",
//         "Exclusive offers fsfsfawait! Open the app nosfsdgsghw to discover amazing deals.",
//         RepeatInterval.everyMinute,
//         notificationDetail);
//   }

//   ShowSchedulenotficationMorning() async {
//     NotificationDetails? notificationDetail = NotificationDetails(
//         android: AndroidNotificationDetails(
//       "id 1",
//       "basic notfications",
//       icon: 'notification_icon',
//       priority: Priority.high,
//       importance: Importance.max,
//     ));
//     tz.initializeTimeZones();
//     final String currentTimeZone = await FlutterTimezone.getLocalTimezone();

//     tz.setLocalLocation(tz.getLocation(currentTimeZone));
//     var cuurentTimenow = tz.TZDateTime.now(tz.local);
//     var SchudelTimeMorning = tz.TZDateTime(tz.local, cuurentTimenow.year,
//         cuurentTimenow.month, cuurentTimenow.day, 9);

//     print(cuurentTimenow);
//     if (SchudelTimeMorning.isBefore(cuurentTimenow)) {
//       SchudelTimeMorning = SchudelTimeMorning.add(Duration(days: 1));
//     }

//     await flutterLocalNotificationsPlugin.zonedSchedule(
//         3,
//         "Padel",
//         "Good morning! Your daily dose of padel awaits. Book now!",
//         SchudelTimeMorning,
//         notificationDetail,
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.absoluteTime);
//   }

//   ShowSchedulenotficationMidday() async {
//     NotificationDetails? notificationDetail = NotificationDetails(
//         android: AndroidNotificationDetails(
//       "id 2",
//       "basic notfications2",
//       priority: Priority.high,
//       icon: 'notification_icon',
//       importance: Importance.max,
//     ));
//     tz.initializeTimeZones();
//     final String currentTimeZone = await FlutterTimezone.getLocalTimezone();

//     tz.setLocalLocation(tz.getLocation(currentTimeZone));
//     var cuurentTimenow = tz.TZDateTime.now(tz.local);
//     var SchudelTimemidday = tz.TZDateTime(
//       tz.local,
//       cuurentTimenow.year,
//       cuurentTimenow.month,
//       cuurentTimenow.day,
//       15,
//     );
//     if (SchudelTimemidday.isBefore(cuurentTimenow)) {
//       SchudelTimemidday = SchudelTimemidday.add(Duration(days: 1));
//     }

//     await flutterLocalNotificationsPlugin.zonedSchedule(
//         4,
//         "Padel",
//         "Don't forget your padel fix! Check availability for this afternoon.",
//         SchudelTimemidday,
//         notificationDetail,
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.absoluteTime);
//   }

//   ShowSchedulenotficationNight() async {
//     NotificationDetails? notificationDetail = NotificationDetails(
//         android: AndroidNotificationDetails(
//       "id 3",
//       "basic notfications3",
//       priority: Priority.high,
//       icon: 'notification_icon',
//       importance: Importance.max,
//     ));
//     tz.initializeTimeZones();
//     final String currentTimeZone = await FlutterTimezone.getLocalTimezone();

//     tz.setLocalLocation(tz.getLocation(currentTimeZone));
//     var cuurentTimenow = tz.TZDateTime.now(tz.local);
//     var SchudelTimeNight = tz.TZDateTime(tz.local, cuurentTimenow.year,
//         cuurentTimenow.month, cuurentTimenow.day, 22, 10);
//     if (SchudelTimeNight.isBefore(cuurentTimenow)) {
//       SchudelTimeNight = SchudelTimeNight.add(Duration(days: 1));
//     }

//     await flutterLocalNotificationsPlugin.zonedSchedule(
//         5,
//         "Padel",
//         "Last chance to book your padel game for the night. Hurry!",
//         SchudelTimeNight,
//         notificationDetail,
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.absoluteTime);
//   }

//   Remindmenotication(
//       String id, int year, int month, int days, int hours, int mintues) async {
//     NotificationDetails? notificationDetail = NotificationDetails(
//         android: AndroidNotificationDetails(
//       id,
//       "basic notfications2",
//       priority: Priority.high,
//       importance: Importance.max,
//     ));
//     tz.initializeTimeZones();
//     final String currentTimeZone = await FlutterTimezone.getLocalTimezone();

//     tz.setLocalLocation(tz.getLocation(currentTimeZone));
//     var cuurentTimenow = tz.TZDateTime.now(tz.local);
//     var SchudelTimemidday =
//         tz.TZDateTime(tz.local, year, month, days, hours, mintues);
//     if (SchudelTimemidday.isBefore(cuurentTimenow)) {
//       SchudelTimemidday = SchudelTimemidday.add(Duration(days: 1));
//     }

//     await flutterLocalNotificationsPlugin.zonedSchedule(
//         4, "Padel", "remider nfnf", SchudelTimemidday, notificationDetail,
//         uiLocalNotificationDateInterpretation:
//             UILocalNotificationDateInterpretation.absoluteTime);
//   }
// }

// void onTap(NotificationResponse notificationResponse) {
//   // Implement your logic here
// }
