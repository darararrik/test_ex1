import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/repositories/auth_repository.dart';
import 'package:test_ex1/domain/repositories/token_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository, this._tokenRepository)
    : super(const AuthState.unlogined()) {
    on<_LoginEvent>(_onLogin);
    on<_RegisterEvent>(_onRegister);
    on<_LogoutEvent>(_onLogout);
    on<_CheckEvent>(_onCheck);
  }
  final IAuthRepository _authRepository;
  final ITokenRepository _tokenRepository;
  Future<void> _onLogin(_LoginEvent e, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      final result = await _authRepository.login(e.email, e.password);
      if (result.isSuccess) {
        emit(const AuthState.logined());
      } else {
        emit(AuthState.error(result.error!.message));
      }
    } catch (e) {
      emit(const AuthState.error("Exception"));
    }
  }

  Future<void> _onRegister(_RegisterEvent e, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      final result = await _authRepository.register(
        e.name,
        e.email,
        e.password,
      );
      if (result.isSuccess) {
        emit(const AuthState.logined());
      } else {
        emit(AuthState.error(result.error!.message));
      }
    } catch (e) {
      emit(const AuthState.error("Exception"));
    }
  }

  void _onLogout(_LogoutEvent e, Emitter<AuthState> emit) {
    emit(const AuthState.unlogined());
  }

  FutureOr<void> _onCheck(_CheckEvent event, Emitter<AuthState> emit) async {
    try {
      final token = await _tokenRepository.getToken();
      if (token != null) {
        emit(const AuthState.logined());
      } else {
        emit(const AuthState.unlogined());
      }
    } catch (_) {
      emit(const AuthState.unlogined());
    }
  }
}
