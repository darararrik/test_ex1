import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/repositories/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const _LoadingState()) {
    on<AuthEvent>((event, emit) {
      event.map(
        login: (e) async => _onLogin(e, emit),
        register: (e) async => _onRegister(e, emit),
        logout: (e) => _onLogout(e, emit),
      );
    });
  }
  final IAuthRepository _authRepository;

  Future<void> _onLogin(_Login e, Emitter<AuthState> emit) async {
    try {
      emit(const AuthState.loading());
      final answer = await _authRepository.login(e.email, e.password);
      if (answer == true) {
        emit(const AuthState.logined());
      } else {
        emit(const AuthState.error("Ошибка авторизации"));
      }
    } catch (e) {
      emit(const AuthState.error("Ошибка"));
    }
  }

  Future<void> _onRegister(_Register e, Emitter<AuthState> emit) async {
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
        emit(const AuthState.error("Ошибка авторизации"));
      }
    } catch (e) {
      emit(const AuthState.error("Ошибка"));
    }
  }

  void _onLogout(_Logout e, Emitter<AuthState> emit) {
    emit(const AuthState.unlogined());
  }
}
