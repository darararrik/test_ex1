import 'package:test_ex1/data/dto/login_request/login_request_dto.dart';
import 'package:test_ex1/data/dto/register_request/register_request_dto.dart';
import 'package:test_ex1/data/utils/result.dart';
import 'package:test_ex1/domain/models/user/user_model.dart';

abstract interface class IAuthRepository {
  Future<Result<UserModel>> login(String email, String password);
  Future<Result<UserModel>> register(
    String name,
    String email,
    String password,
  );
}
