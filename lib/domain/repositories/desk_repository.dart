import 'package:test_ex1/domain/models/desk.dart';

abstract interface class IDeskRepository {
  Future<DeskModel> getMyDesk();
  Future<List<DeskModel>> getOtherDesks({int limit = 10});
}
