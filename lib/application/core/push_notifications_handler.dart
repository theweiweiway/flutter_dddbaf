import 'package:firebase_messaging/firebase_messaging.dart';
import "dart:io";
import 'package:flutter/cupertino.dart';
import 'package:flutter_dddbaf/application/navigation/navigate_via_uri.dart';
import 'package:flutter_dddbaf/infrastructure/core/firebase/firebase_service.dart';

Future pushNotificationsHandler({BuildContext context}) async {
  final _fcm = FirebaseService().messaging;
  if (Platform.isIOS) {
    _fcm.requestNotificationPermissions(IosNotificationSettings());
  }

  _fcm.configure(
    // When app is in the foreground and a push notification is received
    onMessage: (Map<String, dynamic> message) async {
      final deepLink = Uri.parse(message['data']['url']);
      navigateViaUri(deepLink, context);
    },
    // When app is launched from a push notification
    onLaunch: (Map<String, dynamic> message) async {
      final deepLink = Uri.parse(message['data']['url']);
      navigateViaUri(deepLink, context);
    },
    // When app is resumed from a push notification
    onResume: (Map<String, dynamic> message) async {
      final deepLink = Uri.parse(message['data']['url']);
      navigateViaUri(deepLink, context);
    },
    // When phone receives a push notification for this app.
    // Completes the background task even if app is closed
    onBackgroundMessage: _backgroundMessageHandler,
  );
}

Future<dynamic> _backgroundMessageHandler(Map<String, dynamic> message) async {
  if (message.containsKey('data')) {
    // Handle data message
    final dynamic data = message['data'];
  }

  if (message.containsKey('notification')) {
    // Handle notification message
    final dynamic notification = message['notification'];
  }

  // Or do other work.
}
