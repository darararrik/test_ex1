import 'package:drift/drift.dart';

import 'package:test_ex1/data/db/app_db/db.dart';
import 'package:test_ex1/data/db/tables/profile.dart';

part 'profile_dao.g.dart';

@DriftAccessor(tables: [ProfileTable])
class ProfileDao extends DatabaseAccessor<AppDatabase> with _$ProfileDaoMixin {
  ProfileDao(super.db);

  Future<ProfileDto?> getUser() async {
    return select(profileTable).getSingleOrNull();
  }

  Future<ProfileDto?> registerUser({
    required String name,
    required String email,
    required String password,
  }) async {
    into(profileTable).insert(
      ProfileTableCompanion.insert(
        name: name,
        email: email,
        password: password,
      ),
      mode: InsertMode.insertOrAbort,
    );
    return await getUser();
  }

  /// Вход по email и паролю
  Future<ProfileDto?> login({required String email, required String password}) {
    return (select(profileTable)..where(
          (tbl) => tbl.email.equals(email) & tbl.password.equals(password),
        ))
        .getSingleOrNull();
  }
}
