import 'package:dio/dio.dart';
import 'package:test_ex1/data/data_source/auth/remote/remote_ds_auth.dart';
import 'package:test_ex1/data/data_source/profile/local/local_profile_ds.dart';
import 'package:test_ex1/data/db/dao/profile_dao.dart';
import 'package:test_ex1/data/dto/login_request/login_request_dto.dart';
import 'package:test_ex1/data/dto/register_request/register_request.dart';
import 'package:test_ex1/domain/models/user/user_model.dart';
import 'package:test_ex1/domain/repositories/auth_repository.dart';
import 'package:test_ex1/domain/repositories/token_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({
    required RemoteDSAuth remoteDSAuth,
    required ITokenRepository tokenRepository,
  }) : _remoteDSAuth = remoteDSAuth,
       _tokenRepository = tokenRepository;
  final RemoteDSAuth _remoteDSAuth;
  final ITokenRepository _tokenRepository;
  @override
  Future<UserModel> login(String email, String password) async {
    try {
      final requestDto = LoginRequestDto(email: email, password: password);
      return await _remoteDSAuth.login(requestDto);
    } on DioException catch (e) {
      final message = e.response?.data is Map<String, dynamic>
          ? e.response?.data['message'] ?? 'Ошибка авторизации'
          : 'Ошибка сети';
      throw Exception(message);
    }
  }

  @override
  Future<UserModel> register(String name, String email, String password) async {
    try {
      final requestDto = RegisterRequestDto(
        email: email,
        password: password,
        name: name,
      );
      final user = await _remoteDSAuth.register(requestDto);
      _tokenRepository.saveToken(user.token);
      return user;
    } on DioException catch (e) {
      final message = e.response?.data is Map<String, dynamic>
          ? e.response?.data['message'] ?? 'Ошибка регистрации'
          : 'Ошибка сети';
      throw Exception(message);
    }
  }
}
