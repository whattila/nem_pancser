import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/registration.dto.dart';

part 'registration.event.freezed.dart';

@freezed
sealed class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.registrationRequested({
    required RegistrationDto registrationData
  }) = RegistrationRequested;
}