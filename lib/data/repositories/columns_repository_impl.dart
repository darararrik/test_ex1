import 'package:dio/dio.dart';
import 'package:test_ex1/data/data_source/columns/remote/remote_ds_columns.dart';
import 'package:test_ex1/data/dto/column/column_dto.dart';
import 'package:test_ex1/data/dto/created_column/created_column_dto.dart';
import 'package:test_ex1/domain/models/column.dart';
import 'package:test_ex1/domain/repositories/column_repository.dart';

class ColumnRepositoryImpl implements IColumnRepository {
  ColumnRepositoryImpl({required RemoteDSColumns remoteDSColumns})
    : _remoteDSColumns = remoteDSColumns;

  final RemoteDSColumns _remoteDSColumns;

  @override
  Future<ColumnModel> createColumn({required String title}) async {
    final newColumn = CreatedColumnDTO(title: title);
    return (await _remoteDSColumns.createColumn(newColumn)).toModel();
  }

  @override
  Future<void> deleteColumnById({required int columnId}) async {
    try {
      await _remoteDSColumns.deleteColumn(columnId);
    } on DioException catch (e) {
      throw Exception(
        "Не удалось удалить колонку: ${e.response?.statusCode} ${e.message}",
      );
    }
  }

  @override
  Future<ColumnModel> getColumnById({required int columnId}) async =>
      (await _remoteDSColumns.getColumnById(columnId)).toModel();

  @override
  Future<List<ColumnModel>> getColumns({
    required int deskId,
    int limit = 10,
  }) async {
    final response = await _remoteDSColumns.getColumnsByDeskId(deskId, limit);
    return response.data.map((c) => c.toModel()).toList();
  }
}
