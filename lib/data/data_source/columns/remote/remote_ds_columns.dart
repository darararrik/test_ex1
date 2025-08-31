import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:test_ex1/data/dto/column/column_dto.dart';
import 'package:test_ex1/data/dto/columns_response/columns_response_dto.dart';
import 'package:test_ex1/data/dto/created_column/created_column_dto.dart';
import 'package:test_ex1/data/utils/app_defaults.dart';

part 'remote_ds_columns.g.dart';

@RestApi()
abstract class RemoteDSColumns {
  factory RemoteDSColumns(Dio dio, {String? baseUrl}) = _RemoteDSColumns;

  @GET("/desks/{deskId}/columns")
  @Extra({AppDefaults.requiresAuth: true})
  Future<ColumnsResponseDTO> getColumnsByDeskId(
    @Path("deskId") int deskId,
    @Query("limit") int limit,
  );

  @GET("/columns/{columnId}")
  @Extra({AppDefaults.requiresAuth: true})
  Future<ColumnDTO> getColumnById(@Path("columnId") int columnId);

  @DELETE("/columns/{columnId}")
  @Extra({AppDefaults.requiresAuth: true})
  Future<void> deleteColumn(@Path("columnId") int columnId);

  @POST("/columns")
  @Extra({AppDefaults.requiresAuth: true})
  Future<ColumnDTO> createColumn(@Body() CreatedColumnDTO column);
}
