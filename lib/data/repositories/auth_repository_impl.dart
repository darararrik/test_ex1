
import 'package:dio/dio.dart';

import 'package:test_ex1/data/data.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({
    required RemoteDSAuth remoteDSAuth,
    required ITokenRepository tokenRepository,
  }) : _remoteDSAuth = remoteDSAuth,
       _tokenRepository = tokenRepository;

  final RemoteDSAuth _remoteDSAuth;
  final ITokenRepository _tokenRepository;

  @override
  Future<Result<UserDTO>> login(String email, String password) async {
    final requestDto = LoginRequestDto(email: email, password: password);

    try {
      final resHttp = await _remoteDSAuth.login(requestDto);
      final data = resHttp.data;

      if (data.containsKey('message')) {
        return Result.failure(
          AuthError(
            message: data['message'],
            statusCode: resHttp.response.statusCode,
          ),
        );
      }
      final user = UserDTO.fromJson(data);
      if (user.token.isNotEmpty) {
        _tokenRepository.saveToken(user.token);
      }

      return Result.success(user);
    } on DioException catch (e) {
      return Result.failure(_parseDioError(e, AppDefaults.exceptionText));
    }
  }

  @override
  Future<Result<UserDTO>> register(
    String name,
    String email,
    String password,
  ) async {
    final requestDto = RegisterRequestDto(
      name: name,
      email: email,
      password: password,
    );

    try {
      final resHttp = await _remoteDSAuth.register(requestDto);
      final data = resHttp.data;
      if (data.containsKey('message')) {
        return Result.failure(
          AuthError(
            message: data['message'],
            statusCode: resHttp.response.statusCode,
          ),
        );
      }
      final user = UserDTO.fromJson(data);
      if (user.token.isNotEmpty) {
        _tokenRepository.saveToken(user.token);
      }
      return Result.success(resHttp.data);
    } on DioException catch (e) {
      return Result.failure(_parseDioError(e, AppDefaults.exceptionText));
    }
  }

  AuthError _parseDioError(DioException e, String defaultMessage) {
    final data = e.response?.data;

    if (data is Map<String, dynamic> && data['message'] != null) {
      return AuthError(
        message: data['message'],
        statusCode: e.response?.statusCode,
      );
    } else if (data is String) {
      return AuthError(message: data, statusCode: e.response?.statusCode);
    } else {
      return AuthError(
        message: defaultMessage,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
