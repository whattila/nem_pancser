import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../services/user_access_data_storage/user_access_data_storage.dart';
import 'auth_interceptor.dart';

Dio createDioInstance({required UserAccessDataStorage userAccessDataStorage}) {
  final dio = Dio();

  dio.options.contentType = Headers.jsonContentType;

  dio.interceptors.add(
      AuthInterceptor(userAccessDataStorage: userAccessDataStorage)
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onResponse: (e, handler) {
        if (kDebugMode) {
          print('Http status: ${e.statusCode} - data: ${e.data}');
        }
        handler.next(e);
      },
      onError: (e, handler) async {
        if (kDebugMode) {
          print('Dio exception occured:\n${e.response}');
        }
        handler.reject(e);
      },
    ),
  );

  return dio;
}

String getDioErrorMessage(DioException e) {
  final generalErrorMessage = 'Valami hiba történt, próbálja újra később vagy lépjen kapcsolatba ügyfélszolgálatunkkal.';

  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.transformTimeout:
    case DioExceptionType.connectionError:
      return 'Időtúllépés, kérjük próbálja újra, vagy ellenőrízze internet kapcsolatát!';
    case DioExceptionType.badResponse:
      return e.response?.data["message"] ?? generalErrorMessage;
    case DioExceptionType.cancel:
      return 'A kérést megszakították.';
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
      return generalErrorMessage;
  }
}