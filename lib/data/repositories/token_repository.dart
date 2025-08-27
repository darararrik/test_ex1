import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:test_ex1/domain/repositories/token_repository.dart';

class TokenRepositoryImpl implements ITokenRepository {
  TokenRepositoryImpl({required FlutterSecureStorage storage})
    : _storage = storage;
  final FlutterSecureStorage _storage;

  static const _key = 'auth_token';

  @override
  Future<void> saveToken(String token) async {
    await _storage.write(key: _key, value: token);
  }

  @override
  Future<String?> getToken() async {
    return await _storage.read(key: _key);
  }

  @override
  Future<void> clearToken() async {
    await _storage.delete(key: _key);
  }
}
