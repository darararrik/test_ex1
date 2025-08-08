import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import "package:path/path.dart" as path;
import 'package:path_provider/path_provider.dart';
import 'package:test_ex1/core/db/dao/profile_dao.dart';
import 'package:test_ex1/core/db/tables/profile.dart';
part 'app_db.g.dart';

@DriftDatabase(tables: [ProfileTable], daos: [ProfileDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase._internal() : super(_openConnection());
  static AppDatabase? _instance;
  factory AppDatabase() {
    return _instance ??= AppDatabase._internal();
  }
  static void reset() {
    _instance = null;
  }

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (m) async => await m.createAll(),
    onUpgrade: (m, from, to) async {
      await m.deleteTable(profileTable.actualTableName);
      await m.createAll();
    },
  );
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
