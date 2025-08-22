import 'package:drift/drift.dart';

import 'package:test_ex1/data/db/app_db/db.dart';
import 'package:test_ex1/data/db/tables/profile.dart';

part 'profile_dao.g.dart';

@DriftAccessor(tables: [ProfileTable])
class ProfileDao extends DatabaseAccessor<AppDatabase> with _$ProfileDaoMixin {
  ProfileDao(super.db);

  Future<ProfileDto?> getUser(String email) async {
    return (select(
      profileTable,
    )..where((t) => t.email.equals(email))).getSingleOrNull();
  }

  Future<ProfileDto?> registerUser({
    required String name,
    required String email,
    required String password,
  }) async {
    await into(profileTable).insert(
      ProfileTableCompanion.insert(
        name: name,
        email: email,
        password: password,
      ),
      //TODO: INFO: Пока так оставим
      mode: InsertMode.insertOrReplace,
    );

    // безопасно получаем пользователя по email
    return await getUser(email);
  }

  /// Вход по email и паролю
  Future<ProfileDto?> login({required String email, required String password}) {
    return (select(profileTable)..where(
          (tbl) => tbl.email.equals(email) & tbl.password.equals(password),
        ))
        .getSingleOrNull();
  }
}
