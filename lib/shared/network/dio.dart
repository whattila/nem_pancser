import 'dart:developer' as developer;

import 'package:dio/dio.dart';

import '../services/user_access_data_storage/user_access_data_storage.dart';
import 'auth_interceptor.dart';

Dio createDioInstance({required UserAccessDataStorage userAccessDataStorage}) {
  final dio = Dio();

  dio.options.contentType = Headers.jsonContentType;

  dio.options.connectTimeout = Duration(seconds: 10);
  dio.options.sendTimeout = Duration(seconds: 10);
  dio.options.receiveTimeout = Duration(seconds: 10);
  dio.options.transformTimeout = Duration(seconds: 10);

  dio.interceptors.add(
      AuthInterceptor(userAccessDataStorage: userAccessDataStorage)
  );
  dio.interceptors.add(
    InterceptorsWrapper(
      onResponse: (e, handler) {
        developer.log('Http status: ${e.statusCode} - data: ${e.data}');
        handler.next(e);
      },
      onError: (e, handler) async {
        developer.log('Dio exception occured:', error: e);
        handler.reject(e);
      },
    ),
  );

  return dio;
}

final _generalErrorMessage = 'Valami hiba történt, próbálja újra később vagy lépjen kapcsolatba ügyfélszolgálatunkkal.';

String getDioErrorMessage(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.sendTimeout:
    case DioExceptionType.receiveTimeout:
    case DioExceptionType.transformTimeout:
    case DioExceptionType.connectionError:
      return 'Időtúllépés, kérjük próbálja újra, vagy ellenőrízze internet kapcsolatát!';
    case DioExceptionType.badResponse:
      return _getBadResponseErrorMessage(e);
    case DioExceptionType.cancel:
      return 'A kérést megszakították.';
    case DioExceptionType.badCertificate:
    case DioExceptionType.unknown:
      return _generalErrorMessage;
  }
}

String _getBadResponseErrorMessage(DioException e) {
  final message = e.response?.data?["message"];
  if (message is String) {
    return message;
  }
  if (e.response?.statusCode == 400) {
    return 'Rossz kérés, kérjük ellenőrizze a beküldött adatokat.';
  }
  return _generalErrorMessage;
}