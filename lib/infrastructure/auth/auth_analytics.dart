import 'package:flutter_dddbaf/domain/auth/utm_parameters/utm_parameters.dart';
import 'package:flutter_dddbaf/infrastructure/core/firebase/firebase_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthAnalytics {
  FirebaseService _firebaseService;
  AuthAnalytics(this._firebaseService);

  /// Step 1 in the sign up process
  Future<void> logAddEmail() async {
    // final prefs = await _sharedPreferencesService.getPrefs();
    try {
      await _firebaseService.analytics.logEvent(
        name: "add_email",
        parameters: UtmParameters().readFromHive().toJson(),
      );
    } catch (err) {
      print(err);
    }
  }

  /// Step 2 in the sign up process
  Future<void> logPassword() async {
    try {
      await _firebaseService.analytics.logEvent(
        name: "add_password",
        parameters: UtmParameters().readFromHive().toJson(),
      );
    } catch (err) {
      print(err);
    }
  }

  /// Step 3 in the sign up process
  Future<void> logCreateUser() async {
    // final prefs = await _sharedPreferencesService.getPrefs();
    try {
      await _firebaseService.analytics.logEvent(
        name: "create_user",
        parameters: UtmParameters().readFromHive().toJson(),
      );
    } catch (err) {
      print(err);
    }
  }
}
