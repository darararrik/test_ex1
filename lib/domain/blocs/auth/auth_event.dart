part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login(String email, String password) = _LoginEvent;
  const factory AuthEvent.register(String name, String email, String password) =
      _RegisterEvent;
  const factory AuthEvent.logout() = _LogoutEvent;
}
