import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nem_pancser/features/authentication/login/models/login.dto.dart';

part 'login.event.freezed.dart';

@freezed
sealed class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginRequested({
    required LoginDto loginData
  }) = LoginRequested;
}