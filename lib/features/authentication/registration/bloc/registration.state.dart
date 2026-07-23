import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration.state.freezed.dart';

@freezed
sealed class RegistrationState with _$RegistrationState {
  const factory RegistrationState.initial() = RegistrationInitial;
  const factory RegistrationState.loading() = RegistrationLoading;
  const factory RegistrationState.success() = RegistrationSuccess;
  const factory RegistrationState.error({required String message}) = RegistrationError;
}