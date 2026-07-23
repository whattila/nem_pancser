import 'package:dio/dio.dart';
import 'package:nem_pancser/features/authentication/login/models/login.dto.dart';
import 'package:nem_pancser/features/authentication/registration/models/registration.dto.dart';
import 'package:nem_pancser/shared/network/dio.dart';
import 'package:nem_pancser/shared/services/pancser_client/pancser_client.dart';
import 'package:nem_pancser/shared/services/user_access_data_storage/user_access_data_storage.dart';

class AuthRepository {
  AuthRepository({
    required PancserClient pancserClient,
    required UserAccessDataStorage userAccessDataStorage
  }) :
      _pancserClient = pancserClient,
      _userAccessDataStorage = userAccessDataStorage;

  final PancserClient _pancserClient;
  final UserAccessDataStorage _userAccessDataStorage;

  Future<void> login(LoginDto loginData) async {
    try {
      final userCredentials = await _pancserClient.login(loginDto: loginData);
      await _userAccessDataStorage.setUserAccessData(userCredentials);
    } on DioException catch (e) {
      throw AuthException(message: getDioErrorMessage(e));
    }
  }

  Future<void> register(RegistrationDto registrationData) async {
    try {
      final userCredentials = await _pancserClient.register(registrationDto: registrationData);
      await _userAccessDataStorage.setUserAccessData(userCredentials);
    } on DioException catch (e) {
      throw AuthException(message: getDioErrorMessage(e));
    }
  }
}

class AuthException implements Exception {
  const AuthException({required this.message});

  final String message;

  @override
  String toString() => message;
}