import 'package:retrofit/dio.dart';

class AuthError {
  AuthError({required this.message, this.statusCode});
  factory AuthError.toAuthError({required HttpResponse response}) {
    return AuthError(
      message: response.data["message"],
      statusCode: response.response.statusCode,
    );
  }
  final String message;
  final int? statusCode;
}
