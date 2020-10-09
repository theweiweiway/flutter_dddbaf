import 'package:flutter_dddbf/domain/core/utm_parameters/utm_parameters.dart';
import 'package:flutter_dddbf/infrastructure/core/firebase/firebase_service.dart';
import 'package:flutter_dddbf/infrastructure/core/shared_preferences/shared_preferences_service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthAnalytics {
  FirebaseService _firebaseService;
  SharedPreferencesService _sharedPreferencesService;
  AuthAnalytics(this._firebaseService, this._sharedPreferencesService);

  /// Step 1 in the sign up process
  Future<void> logAddEmail() async {
    final prefs = await _sharedPreferencesService.getPrefs();
    try {
      await _firebaseService.analytics.logEvent(
        name: "add_email",
        parameters: UtmParameters(
          source: prefs.getString('utm_source'),
          medium: prefs.getString('utm_medium'),
          name: prefs.getString('utm_name'),
        ).toJson(),
      );
    } catch (err) {
      print(err);
    }
  }

  /// Step 2 in the sign up process
  Future<void> logPassword() async {
    final prefs = await _sharedPreferencesService.getPrefs();
    try {
      await _firebaseService.analytics.logEvent(
        name: "add_password",
        parameters: UtmParameters(
          source: prefs.getString('utm_source'),
          medium: prefs.getString('utm_medium'),
          name: prefs.getString('utm_name'),
        ).toJson(),
      );
    } catch (err) {
      print(err);
    }
  }

  /// Step 3 in the sign up process
  Future<void> logCreateUser() async {
    final prefs = await _sharedPreferencesService.getPrefs();
    try {
      await _firebaseService.analytics.logEvent(
        name: "create_user",
        parameters: UtmParameters(
          source: prefs.getString('utm_source'),
          medium: prefs.getString('utm_medium'),
          name: prefs.getString('utm_name'),
        ).toJson(),
      );
    } catch (err) {
      print(err);
    }
  }
}
