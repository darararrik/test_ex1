import 'package:drift/drift.dart';

@DataClassName("ProfileEntity")
class ProfileTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get name => text()();

  TextColumn get email => text().unique()();

  TextColumn get password => text()();
}
