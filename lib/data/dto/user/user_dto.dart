import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/domain/models/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
sealed class UserDTO with _$UserDTO {
  const factory UserDTO({
    required int id,
    required String email,
    required String name,
    required String token,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}

extension UserMapper on UserDTO {
  UserModel toModel() => UserModel(id: id, email: email, name: name);
}
