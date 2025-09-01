import 'package:test_ex1/domain/models/cursor.dart';
import 'package:test_ex1/domain/models/desk.dart';
import 'package:test_ex1/domain/models/desks_response.dart';

abstract interface class IDeskRepository {
  Future<DeskModel> getMyDesk();
  Future<DesksResponseModel> getOtherDesks({
    int limit = 10,
    String? afterCursor,
  });
}
