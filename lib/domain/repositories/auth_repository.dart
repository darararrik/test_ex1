import 'package:test_ex1/data/dto/login_request/login_request_dto.dart';
import 'package:test_ex1/data/dto/register_request/register_request.dart';
import 'package:test_ex1/domain/models/user/user_model.dart';

abstract interface class IAuthRepository {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String name, String email, String password);
}
