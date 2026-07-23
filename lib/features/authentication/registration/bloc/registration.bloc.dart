import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/authentication/registration/bloc/registration.event.dart';
import 'package:nem_pancser/features/authentication/registration/bloc/registration.state.dart';

import '../../shared/auth.repository.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc(this._authRepository) : super(const RegistrationInitial()) {
    on<RegistrationRequested>(_onRegistrationRequested);
  }

  final AuthRepository _authRepository;

  Future<void> _onRegistrationRequested(RegistrationRequested event, Emitter<RegistrationState> emit) async {
    emit(const RegistrationLoading());
    try {
      await _authRepository.register(event.registrationData);
      emit(const RegistrationSuccess());
    } on AuthException catch (e) {
      emit(RegistrationError(message: e.message));
    }
  }
}