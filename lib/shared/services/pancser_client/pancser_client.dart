import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/authentication/login/models/login.dto.dart';
import '../../../features/authentication/registration/models/registration.dto.dart';
import '../user_access_data_storage/models/user_access_data.model.dart';

part 'pancser_client.g.dart';

@RestApi(baseUrl: 'http://127.0.0.1:3000')
abstract class PancserClient {
  factory PancserClient(Dio dio, {String? baseUrl}) = _PancserClient;

  @POST('/auth/login')
  Future<UserAccessData> login({
    @Body() required LoginDto loginDto,
  });

  @POST('/auth/register')
  Future<UserAccessData> register({
    @Body() required RegistrationDto registrationDto,
  });
}