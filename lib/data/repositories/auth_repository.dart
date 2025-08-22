import 'package:test_ex1/data/data_source/profile/local/local_profile_ds.dart';
import 'package:test_ex1/data/db/dao/profile_dao.dart';
import 'package:test_ex1/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements IAuthRepository {
  AuthRepositoryImpl({required LocalDSProfile localDS}) : _localDS = localDS;
  final LocalDSProfile _localDS;
  @override
  Future<bool> login(String email, String password) async {
    try {
      final user = await _localDS.login(email, password);
      if (user != null) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> register(String name, String email, String password) async {
    try {
      final currentUser = await _localDS.reg(name, email, password);
      if (currentUser != null) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
