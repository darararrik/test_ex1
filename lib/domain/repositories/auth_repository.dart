import 'package:test_ex1/data/dto/login_request/login_request_dto.dart';
import 'package:test_ex1/data/dto/register_request/register_request_dto.dart';
import 'package:test_ex1/data/dto/user/user_dto.dart';
import 'package:test_ex1/data/utils/result.dart';

abstract interface class IAuthRepository {
  Future<Result<UserDTO>> login(String email, String password);
  Future<Result<UserDTO>> register(String name, String email, String password);
}
