import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_dto.freezed.dart';
part 'register_request_dto.g.dart';

@freezed
sealed class RegisterRequestDto with _$RegisterRequestDto {
  const factory RegisterRequestDto({
    required String email,
    required String name,
    required String password,
  }) = _RegisterRequestDto;

  factory RegisterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDtoFromJson(json);
}
