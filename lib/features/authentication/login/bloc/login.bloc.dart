import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nem_pancser/features/authentication/login/bloc/login.event.dart';
import 'package:nem_pancser/features/authentication/login/bloc/login.state.dart';
import 'package:nem_pancser/features/authentication/shared/auth.repository.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(this._authRepository) : super(const LoginInitial()) {
    on<LoginRequested>(_onLoginRequested);
  }

  final AuthRepository _authRepository;

  Future<void> _onLoginRequested(LoginRequested event, Emitter<LoginState> emit) async {
    emit(const LoginLoading());
    try {
      await _authRepository.login(event.loginData);
      emit(const LoginSuccess());
    } on AuthException catch (e) {
      emit(LoginError(message: e.message));
    }
  }
}
