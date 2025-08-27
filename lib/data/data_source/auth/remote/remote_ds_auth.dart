import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:test_ex1/data/dto/login_request/login_request_dto.dart';
import 'package:test_ex1/data/dto/register_request/register_request_dto.dart';
import 'package:test_ex1/domain/models/user/user_model.dart';

part 'remote_ds_auth.g.dart';

@RestApi()
abstract class RemoteDSAuth {
  factory RemoteDSAuth(Dio dio, {String? baseUrl}) = _RemoteDSAuth;

  @POST("/auth/sign-in")
  Future<HttpResponse> login(@Body() LoginRequestDto body);

  @POST("/auth/sign-up")
  Future<HttpResponse> register(@Body() RegisterRequestDto body);
}
