import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:test_ex1/data/dto/desk/desk_dto.dart';
import 'package:test_ex1/data/dto/desks_response/desks_response_dto.dart';
import 'package:test_ex1/data/utils/app_defaults.dart';

part 'remote_ds_desks.g.dart';

@RestApi()
abstract class RemoteDSDesks {
  factory RemoteDSDesks(Dio dio, {String? baseUrl}) = _RemoteDSDesks;

  @GET("/desks")
  @Extra({AppDefaults.requiresAuth: true})
  Future<DesksResponseDTO> geOthertDesks(@Query("limit") int limit);

  @GET("/desks/my")
  @Extra({AppDefaults.requiresAuth: true})
  Future<DeskDTO> getMyDesk();
}
