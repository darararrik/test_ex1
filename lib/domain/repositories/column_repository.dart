import 'package:test_ex1/data/dto/column/column_dto.dart';
import 'package:test_ex1/data/dto/columns_response/columns_response_dto.dart';
import 'package:test_ex1/data/dto/created_column/created_column_dto.dart';
import 'package:test_ex1/domain/models/models.dart';

abstract class IColumnRepository {
  Future<ColumnModel> createColumn({required String title});
  Future<void> deleteColumnById({required int columnId});
  Future<ColumnModel> getColumnById({required int columnId});
  Future<List<ColumnModel>> getColumns({required int deskId, int limit = 10});
}
