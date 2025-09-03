import 'package:test_ex1/domain/models/models.dart';

class DesksResponseModel {
  DesksResponseModel({required this.desksList, required this.cursor});

  final List<DeskModel> desksList;
  final CursorModel cursor;
}
