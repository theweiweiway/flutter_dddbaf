import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@lazySingleton
class SharedPreferencesService {
  Future<SharedPreferences> getPrefs() async {
    return await SharedPreferences.getInstance();
  }
}
