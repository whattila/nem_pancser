import 'dart:io';

import 'package:dio/dio.dart';

import '../services/user_access_data_storage/user_access_data_storage.dart';

class AuthInterceptor extends Interceptor {
  AuthInterceptor({required this.userAccessDataStorage});

  final UserAccessDataStorage userAccessDataStorage;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler
  ) async {
      final userAccessData = await userAccessDataStorage.getUserAccessData();

      if (userAccessData != null) {
        final token = userAccessData.accessToken;
        options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
      }

      handler.next(options);
  }
}