import 'package:test_ex1/domain/models/models.dart';

abstract class IColumnRepository {
  Future<ColumnModel> createColumn({required String title});
  Future<void> deleteColumnById({required int columnId});
  Future<ColumnModel> getColumnById({required int columnId});
  Future<ColumnsResponseModel> getColumns({
    required int deskId,
    int limit = 10,
  });
}
