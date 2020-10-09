import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';

@singleton
class FirebaseService {
  FirebaseAuth get auth => FirebaseAuth.instance;
  FirebaseMessaging get messaging => FirebaseMessaging();

  // ANALYTICS
  FirebaseAnalytics get analytics => FirebaseAnalytics();
  FirebaseAnalyticsObserver get analyticsObserver =>
      FirebaseAnalyticsObserver(analytics: analytics);
}
