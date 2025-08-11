import 'package:drift/drift.dart';

import 'package:test_ex1/core/db/app_db/db.dart';
import 'package:test_ex1/core/db/tables/profile.dart';

part 'profile_dao.g.dart';

@DriftAccessor(tables: [ProfileTable])
class ProfileDao extends DatabaseAccessor<AppDatabase> with _$ProfileDaoMixin {
  ProfileDao(super.db);

  Future<int> registerUser({
    required String name,
    required String email,
    required String password,
  }) async {
    return into(profileTable).insert(
      ProfileTableCompanion.insert(
        name: name,
        email: email,
        password: password,
      ),
      mode: InsertMode.insertOrAbort,
    );
  }

  /// Вход по email и паролю
  Future<ProfileEntity?> login({
    required String email,
    required String password,
  }) {
    return (select(profileTable)..where(
          (tbl) => tbl.email.equals(email) & tbl.password.equals(password),
        ))
        .getSingleOrNull();
  }
}
