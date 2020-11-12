// import 'package:dio/dio.dart';
// import 'package:honeybee_mobile/application/core/secure_storage.dart';
// import 'package:honeybee_mobile/domain/shared/device/device.dart';
// import 'package:honeybee_mobile/injection.dart';

// dynamic requestInterceptor(RequestOptions options) async {
//   SecureStorage _storage = getIt<SecureStorage>();

//   if (options.headers.containsKey("withcredentials")) {
//     options.headers.remove("withcredentials");

//     try {
//       final accessToken = await _storage.getAccessToken();
//       options.headers.addAll({'Authorization': 'Bearer ' + accessToken});
//     } catch (e) {
//       options.headers.addAll({'Authorization': 'Bearer ' + 'null'});
//     }
//     try {
//       final _deviceInfo = await Device().getInfo();
//       options.headers.addAll({'Device-Id': _deviceInfo.id});
//       if (options.headers.containsKey("withdeviceinfo")) {
//         options.headers.remove("withdeviceinfo");
//         // options.data = new Map<String, dynamic>();
//         options.data['fcmToken'] = _deviceInfo.fcmToken;
//         options.data['devicePlatform'] = _deviceInfo.platform;
//         options.data['rememberMe'] = "true";
//         options.data['deviceOS'] = _deviceInfo.os;
//         options.data['deviceBrowser'] = _deviceInfo.browser;
//         options.data['deviceModel'] = _deviceInfo.model;
//       }
//       return options;
//     } catch (e) {
//       print("[REQ INTERCEPTOR] Error: $e");
//       return options;
//     }
//   }
//   return options;
// }
