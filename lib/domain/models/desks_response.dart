import 'package:test_ex1/data/dto/cursor/cursor_dto.dart';
import 'package:test_ex1/domain/models/cursor.dart';
import 'package:test_ex1/domain/models/models.dart';

class DesksResponseModel {
  DesksResponseModel({required this.desksList, required this.cursor});

  final List<DeskModel> desksList;
  final CursorModel cursor;
}
