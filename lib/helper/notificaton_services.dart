// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import '../data/db/shared-preferences.dart';
// import '../main.dart';
//
// // To initialized notification to handel notification in background
// Future<void> backgroundHandler(RemoteMessage message) async {}
//
// class RemoteMessage {
// }
//
// // initialized FlutterLocalNotificationsPlugin
//
// final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//     FlutterLocalNotificationsPlugin();
//
// class NotificationService {
//   // To initialized notification
//   Future<void> initialize() async {
//     //initialization for background
//     FirebaseMessaging.onBackgroundMessage(backgroundHandler);
//
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings("@mipmap/ic_launcher");
//
//     // initializationSettings  for IOS
//     const DarwinInitializationSettings initializationSettingsIos =
//         DarwinInitializationSettings(
//       requestAlertPermission: false,
//       requestBadgePermission: false,
//       requestSoundPermission: false,
//     );
//
//     // Initialization of setting for both android and ios
//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIos,
//     );
//     //coin_received, request_received, request_accepted, coin_claimed , processing_complete
//
//     // When the notification in foreground and user click on it
//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse response) async {
//         debugPrint("Payload=====================.>>>>>>: ${response.payload}");
//         // Checking for type of notification to navigate to its related screen
//         bool? isLogin = await LocalDb.getLogin;
//         if (isLogin == true) {
//           if (response.payload != null) {
//             Navigator.push(navigatorKey.currentContext!,
//                 MaterialPageRoute(builder: (context) {
//               return InvoiceDetailScreen(
//                   invoiceId: int.tryParse(response.payload!));
//             }));
//           } else {
//             navigatorKey.currentState!.pushNamed(RouterHelper.homeScreen);
//           }
//         } else {
//           navigatorKey.currentState!.pushNamed(RouterHelper.signInScreen);
//         }
//       },
//     );
//   }
//
//   // Notification detail for android
//
//   static const AndroidNotificationDetails androidNotificationDetails =
//       AndroidNotificationDetails(
//     "high_importance_channel", // id
//     'High Importance Notifications', // title
//     importance: Importance.max,
//     priority: Priority.high,
//   );
//
//   // Notification detail for Ios
//
//   static const DarwinNotificationDetails iosNotificationDetails =
//       DarwinNotificationDetails(
//     presentAlert: true,
//     presentBadge: true,
//     presentSound: true,
//   );
//
//   // After initialize we create channel in displayNotification method
//
//   Future<void> displayNotification(RemoteMessage message) async {
//     try {
//       final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
//       const NotificationDetails notificationDetails = NotificationDetails(
//           android: androidNotificationDetails, iOS: iosNotificationDetails);
//
//       await flutterLocalNotificationsPlugin.show(
//         id,
//         message.notification!.title,
//         message.notification!.body,
//         notificationDetails,
//         // To set type of notification
//         payload: message.data['invoiceId'],
//       );
//     } on Exception catch (e) {
//       print(e);
//     }
//   }
//
//   // NOTIFICATION HANDLER
//   Future<void> handleNotification(context) async {
//     // 1. This method call when app in terminated state and you get a notification
//     // when you click on notification app open from terminated state and you can get notification data in this method
//
//     FirebaseMessaging.instance.getInitialMessage().then((message) async {
//       debugPrint("FirebaseMessaging.instance.getInitialMessage");
//       if (message != null) {
//         if (message.notification != null) {
//           //updateBadgesCount(message.data['page']);
//           // get the login status of the user
//           bool? isLogin = await LocalDb.getLogin;
//           debugPrint("New Notification");
//           debugPrint("User Login Status : $isLogin");
//           //coin_received, request_received, request_accepted, coin_claimed , processing_complete
//           // check for status
//           if (isLogin == true) {
//             //check for notification type to navigate to related screen when user tap on it,
//             if (message.data['invoiceId'] != null) {
//               Navigator.push(navigatorKey.currentContext!,
//                   MaterialPageRoute(builder: (context) {
//                 return InvoiceDetailScreen(
//                     invoiceId: int.tryParse(message.data['invoiceId']));
//               }));
//             } else {
//               navigatorKey.currentState!.pushNamed(RouterHelper.homeScreen);
//             }
//           } else {
//             navigatorKey.currentState!.pushNamed(RouterHelper.signInScreen);
//           }
//         }
//       }
//     });
//
//     // 2. This method only call when App in foreground it mean app must be opened
//     FirebaseMessaging.onMessage.listen(
//       (message) {
//         debugPrint("FirebaseMessaging.onMessage.listen");
//         if (message.notification != null) {
//           print(message);
//           print(message.notification!);
//           debugPrint(message.notification!.title);
//           debugPrint(message.notification!.body);
//           debugPrint("message.data ${message.data}");
//           // Display notification
//           displayNotification(message);
//         }
//       },
//     );
//
//     // 3. This method only call when App in background and not terminated(not closed)
//     FirebaseMessaging.onMessageOpenedApp.listen(
//       (RemoteMessage message) async {
//         debugPrint("FirebaseMessaging.onMessageOpenedApp.listen");
//         if (message.notification != null) {
//           print(message);
//           print(message.notification!);
//           debugPrint(message.notification!.title);
//           debugPrint(message.notification!.body);
//           debugPrint("message.data ${message.data}");
//           // checking for notification type
//           bool? isLogin = await LocalDb.getLogin;
//           if (isLogin == true) {
//             if (message.data['invoiceId'] != null) {
//               Navigator.push(navigatorKey.currentContext!,
//                   MaterialPageRoute(builder: (context) {
//                 return InvoiceDetailScreen(
//                     invoiceId: int.tryParse(message.data['invoiceId']));
//               }));
//             } else {
//               navigatorKey.currentState!.pushNamed(RouterHelper.homeScreen);
//             }
//           } else {
//             navigatorKey.currentState!.pushNamed(RouterHelper.signInScreen);
//           }
//         }
//       },
//     );
//   }
// }
