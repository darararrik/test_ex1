import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const AuthState.unlogined()) {
    on<_LoginEvent>(_onLogin);
    on<_RegisterEvent>(_onRegister);
    on<_LogoutEvent>(_onLogout);
  }
  final IAuthRepository _authRepository;

  Future<void> _onLogin(_LoginEvent e, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      final answer = await _authRepository.login(e.email, e.password);
      if (answer == true) {
        emit(const AuthState.logined());
      } else {
        emit(const AuthState.error("Incorrect login or password"));
      }
    } catch (e) {
      emit(const AuthState.error("Exception"));
    }
  }

  Future<void> _onRegister(_RegisterEvent e, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      final answer = await _authRepository.register(
        e.name,
        e.email,
        e.password,
      );
      if (answer == true) {
        emit(const AuthState.logined());
      } else {
        emit(const AuthState.error("Incorrect login or password"));
      }
    } catch (e) {
      emit(const AuthState.error("Exception"));
    }
  }

  void _onLogout(_LogoutEvent e, Emitter<AuthState> emit) {
    emit(const AuthState.unlogined());
  }
}
