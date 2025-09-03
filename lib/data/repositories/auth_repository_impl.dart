import 'package:dio/dio.dart';
import 'package:test_ex1/data/data.dart';
import 'package:test_ex1/domain/models/user.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({
    required RemoteDataSource remoteDataSource,
    required ITokenRepository tokenRepository,
  }) : _remoteDataSource = remoteDataSource,
       _tokenRepository = tokenRepository;

  final RemoteDataSource _remoteDataSource;
  final ITokenRepository _tokenRepository;

  @override
  Future<Result<UserModel>> login(String email, String password) async {
    final requestDto = LoginRequestDto(email: email, password: password);

    try {
      final resHttp = await _remoteDataSource.signIn(requestDto);
      final data = resHttp.data;

      if (data.containsKey('message')) {
        return Result.failure(
          AuthError(message: data['message'], statusCode: resHttp.statusCode),
        );
      }
      final user = UserDTO.fromJson(data);
      if (user.token.isNotEmpty) {
        _tokenRepository.saveToken(user.token);
      }

      return Result.success(user.toModel());
    } on DioException catch (e) {
      return Result.failure(_parseDioError(e, AppDefaults.exceptionText));
    }
  }

  @override
  Future<Result<UserModel>> register(
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
      final resHttp = await _remoteDataSource.signUp(requestDto);
      final data = resHttp.data;
      if (data.containsKey('message')) {
        return Result.failure(
          AuthError(message: data['message'], statusCode: resHttp.statusCode),
        );
      }
      final user = UserDTO.fromJson(data);
      if (user.token.isNotEmpty) {
        _tokenRepository.saveToken(user.token);
      }
      return Result.success(user.toModel());
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
