import 'package:test_ex1/data/db/app_db/db.dart';
import 'package:test_ex1/data/db/dao/profile_dao.dart';

class LocalDSProfile {
  LocalDSProfile({required ProfileDao profileDao}) : _profileDao = profileDao;

  final ProfileDao _profileDao;
  Future<ProfileDto?> login(String email, String password) =>
      _profileDao.login(email: email, password: password);

  Future<ProfileDto?> reg(String name, String email, String password) =>
      _profileDao.registerUser(name: name, email: email, password: password);
}
