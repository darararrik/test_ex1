import 'package:test_ex1/data/data_source/columns/remote/remote_ds_columns.dart';
import 'package:test_ex1/data/dto/columns/columns_dto.dart';
import 'package:test_ex1/data/dto/created_column/created_column_dto.dart';
import 'package:test_ex1/domain/repositories/column_repository.dart';

class ColumnsRepositoryImpl implements IColumnRepository {
  ColumnsRepositoryImpl({required RemoteDSColumns remoteDSColumns})
    : _remoteDSColumns = remoteDSColumns;

  final RemoteDSColumns _remoteDSColumns;

  @override
  Future<ColumnsDTO> createColumn({required CreatedColumnDTO column}) =>
      _remoteDSColumns.createColumn(column);

  @override
  Future<ColumnsDTO> deleteColumnById({required int columnId}) =>
      _remoteDSColumns.deleteColumn(columnId);

  @override
  Future<ColumnsDTO> getColumnById({required int columnId}) =>
      _remoteDSColumns.getColumnById(columnId);

  @override
  Future<List<ColumnsDTO>> getColumns({
    required int deskId,
    int limit = 10,
  }) async {
    final response = await _remoteDSColumns.getColumnsByDeskId(deskId, limit);
    return response.data;
  }
}
