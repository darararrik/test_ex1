import 'package:flutter/foundation.dart';

import 'package:test_ex1/data/db/app_db/db.dart';
import 'package:test_ex1/data/db/dao/profile_dao.dart';

class AuthNotifier extends ChangeNotifier {
  AuthNotifier(this._profileDao);
  final ProfileDao _profileDao;

  ProfileEntity? _currentUser;
  ProfileEntity? get currentUser => _currentUser;

  Future<bool> login(String email, String password) async {
    final user = await _profileDao.login(email: email, password: password);
    if (user != null) {
      _currentUser = user;
      notifyListeners();
      return true;
    }
    return false;
  }

  Future<bool> register(String name, String email, String password) async {
    try {
      final id = await _profileDao.registerUser(
        name: name,
        email: email,
        password: password,
      );
      _currentUser = ProfileEntity(
        id: id,
        name: name,
        email: email,
        password: password,
      );
      notifyListeners();
      return true;
    } catch (e) {
      return false;
    }
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }
}
