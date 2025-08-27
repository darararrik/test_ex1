import 'package:test_ex1/data/dto/columns_response/columns_response_dto.dart';
import 'package:test_ex1/data/dto/created_column/created_column_dto.dart';
import 'package:test_ex1/data/dto/columns/columns_dto.dart';

abstract class IColumnRepository {
  Future<ColumnsDTO> createColumn({required CreatedColumnDTO column});
  Future<ColumnsDTO> deleteColumnById({required int columnId});
  Future<ColumnsDTO> getColumnById({required int columnId});
  Future<List<ColumnsDTO>> getColumns({required int deskId, int limit = 10});
}
