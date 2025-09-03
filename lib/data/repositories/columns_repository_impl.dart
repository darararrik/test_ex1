import 'package:dio/dio.dart';

import 'package:test_ex1/data/data_source/remote/remote.dart';
import 'package:test_ex1/data/dto/column/column_dto.dart';
import 'package:test_ex1/data/dto/columns_response/columns_response_dto.dart';
import 'package:test_ex1/data/dto/created_column/created_column_dto.dart';
import 'package:test_ex1/domain/models/column.dart';
import 'package:test_ex1/domain/models/columns_response.dart';
import 'package:test_ex1/domain/repositories/column_repository.dart';

class ColumnRepositoryImpl implements IColumnRepository {
  ColumnRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final RemoteDataSource _remoteDataSource;

  @override
  Future<ColumnModel> createColumn({required String title}) async {
    final newColumn = CreatedColumnDTO(title: title);
    return (await _remoteDataSource.createColumn(newColumn)).toModel();
  }

  @override
  Future<void> deleteColumnById({required int columnId}) async {
    try {
      await _remoteDataSource.deleteColumn(columnId);
    } on DioException catch (e) {
      throw Exception(
        "Не удалось удалить колонку: ${e.response?.statusCode} ${e.message}",
      );
    }
  }

  @override
  Future<ColumnModel> getColumnById({required int columnId}) async =>
      (await _remoteDataSource.getColumnById(columnId)).toModel();

  @override
  Future<ColumnsResponseModel> getColumns({
    required int deskId,
    int limit = 10,
  }) async {
    final response = await _remoteDataSource.getColumnsByDeskId(deskId, limit);
    return response.toModel();
  }
}
