// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:honeybee_mobile/application/core/secure_storage.dart';
// import 'package:honeybee_mobile/domain/shared/device/device.dart';
// import 'package:honeybee_mobile/domain/shared/failure/failure.dart';
// import 'package:honeybee_mobile/infrastructure/auth/remote_data/auth_api.dart';
// import 'package:honeybee_mobile/infrastructure/core/dio/dio_service.dart';
// import 'package:honeybee_mobile/injection.dart';

// dynamic errorInterceptor(DioError dioError) async {
//   SecureStorage _storage = getIt<SecureStorage>();
//   if (dioError.error is SocketException) {
//     return Failure.socketException();
//   } else if (DioErrorType.RECEIVE_TIMEOUT == dioError.type ||
//       DioErrorType.CONNECT_TIMEOUT == dioError.type) {
//     return Failure.socketException();
//   } else if (DioErrorType.DEFAULT == dioError.type &&
//       dioError.message.contains('SocketException')) {
//     return Failure.socketException();
//   } else if (DioErrorType.RESPONSE == dioError.type &&
//       dioError.response.statusCode == 429) {
//     return Failure.error(
//         message: 'Too many requests - Please wait and try again later');
//   } else if (DioErrorType.RESPONSE == dioError.type &&
//           dioError.response.statusCode == 500 ||
//       dioError.response.data["message"]?.toLowerCase() ==
//           'internal server error' ||
//       dioError.response.data["error"]?.toLowerCase() ==
//           'internal server error') {
//     return Failure.internalServerError();
//   } else if (dioError.request.headers.containsKey('Authorization')) {
//     String errorString;
//     String messageString;
//     // TODO: check out the index error
//     try {
//       errorString = dioError.response.data["error"].toString().toLowerCase();
//       messageString =
//           dioError.response.data["message"].toString().toLowerCase();
//     } catch (e) {
//       return Failure.fromJson(dioError.response.data);
//       // Failure.error(message: 'An error has occured. Please try again');
//     }

//     if (errorString == 'expired access token' ||
//         messageString == 'expired access token') {
//       try {
//         final res = await refreshTokenAndRetryRequest(dioError);
//         return res;
//       } catch (e) {
//         return e; // double check this e, it should be a failure object
//       }
//     } else if (errorString == 'bad token' || messageString == 'bad token') {
//       await _storage.deleteTokens();
//       return Failure.badToken();
//     }
//   }

//   try {
//     return Failure.error(
//         message: dioError.response.data["message"],
//         error: dioError.response.data["error"]);
//   } catch (e) {
//     return Failure.error(message: 'An error has occured. Please try again');
//   }
// }

// Future<Response<dynamic>> refreshTokenAndRetryRequest(DioError dioError) async {
//   DioService _dio = getIt<DioService>();
//   AuthApi _auth = getIt<AuthApi>();

//   try {
//     // ******************** refresh the tokens ******************** //
//     _dio.myDio().lock();
//     final tokens = await _auth.renewAuthTokens();
//     _dio.myDio().unlock();
//     final deviceInfo = await Device().getInfo();
//     // ******************** retry the HTTP request ******************** //
//     final response = await _dio.tokenDio().request(dioError.request.path,
//         data: dioError.request.data,
//         queryParameters: dioError.request.queryParameters,
//         options: Options(method: dioError.request.method, headers: {
//           'Authorization': 'Bearer ${tokens.accessToken}',
//           'Device-Id': deviceInfo.id
//         }));
//     return response;
//   } on DioError catch (e) {
//     _dio.myDio().clear();
//     throw e.error; // a failure object
//   }
// }
