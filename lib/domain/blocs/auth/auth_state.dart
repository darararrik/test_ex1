part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.logined() = _LoginedState;
  const factory AuthState.error(String message) = _ErrorState;
  const factory AuthState.loading() = _LoadingState;
  const factory AuthState.unlogined() = _UnloginedState;
}
