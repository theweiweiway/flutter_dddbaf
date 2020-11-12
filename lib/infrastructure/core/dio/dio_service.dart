// import 'package:connectivity/connectivity.dart';
// import 'package:dio/dio.dart';
// import 'package:honeybee_mobile/infrastructure/core/dio/interceptor/error_interceptor.dart';
// import 'package:honeybee_mobile/infrastructure/core/dio/interceptor/login_error_interceptor.dart';
// import 'package:honeybee_mobile/infrastructure/core/dio/interceptor/my_interceptors_wrapper.dart';
// import 'package:honeybee_mobile/infrastructure/core/dio/interceptor/request_interceptor.dart';
// import 'package:honeybee_mobile/infrastructure/core/dio/interceptor/token_error_interceptor.dart';
// import 'package:honeybee_mobile/infrastructure/core/url_config.dart';
// import 'package:injectable/injectable.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// @injectable
// class DioService {
//   IUrlConfig _config;
//   BaseOptions options;
//   Connectivity connectivity = Connectivity();

//   DioService(this._config);

//   BaseOptions getOptions() {
//     return BaseOptions(
//         baseUrl: _config.baseApiUrl,
//         connectTimeout: 5000,
//         receiveTimeout: 3000,
//         responseType: ResponseType.json // might have to use .plain
//         );
//   }

//   PrettyDioLogger prettyLogger = PrettyDioLogger(
//     request: false,
//     requestHeader: false,
//     requestBody: false,
//     responseBody: false,
//     responseHeader: false,
//     compact: true,
//   );

//   Dio addInterceptors(Dio dio) {
//     dio.interceptors.add(MyInterceptorsWrapper(
//         connectivity: connectivity,
//         onRequest: (RequestOptions options) => requestInterceptor(options),
//         onError: (DioError dioError) => errorInterceptor(dioError)));
//     if (_config.baseApiUrl != 'https://www.honeybeehub.io') {
//       dio.interceptors.add(prettyLogger);
//     }
//     return dio;
//   }

//   Dio myDio() {
//     return addInterceptors(new Dio(getOptions()));
//   }

//   Dio addLoginInterceptors(Dio dio) {
//     dio.interceptors.add(MyInterceptorsWrapper(
//         connectivity: connectivity,
//         onRequest: (RequestOptions options) => requestInterceptor(options),
//         onError: (DioError dioError) => loginErrorInterceptor(dioError)));
//     if (_config.baseApiUrl != 'https://www.honeybeehub.io') {
//       dio.interceptors.add(prettyLogger);
//     }
//     return dio;
//   }

//   Dio loginDio() {
//     return addLoginInterceptors(new Dio(getOptions()));
//   }

//   Dio addTokenInterceptors(Dio dio) {
//     dio.interceptors.add(MyInterceptorsWrapper(
//         connectivity: connectivity,
//         onRequest: (RequestOptions options) => requestInterceptor(options),
//         onError: (DioError dioError) => tokenErrorInterceptor(dioError)));

//     if (_config.baseApiUrl != 'https://www.honeybeehub.io') {
//       dio.interceptors.add(prettyLogger);
//     }
//     return dio;
//   }

//   Dio tokenDio() {
//     return addTokenInterceptors(new Dio(getOptions()));
//   }
// }
