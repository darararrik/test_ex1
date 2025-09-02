import 'package:test_ex1/domain/models/models.dart';

class ColumnsResponseModel {
  ColumnsResponseModel({required this.columnsList, required this.cursor});
  final List<ColumnModel> columnsList;
  final CursorModel cursor;
}
