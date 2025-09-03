import 'package:freezed_annotation/freezed_annotation.dart';

part 'created_column_dto.freezed.dart';
part "created_column_dto.g.dart";

@freezed
sealed class CreatedColumnDTO with _$CreatedColumnDTO {
  const factory CreatedColumnDTO({
    required String title,
    @JsonKey(includeIfNull: true) String? description,
  }) = _CreatedColumnDTO;
  factory CreatedColumnDTO.fromJson(Map<String, dynamic> json) =>
      _$CreatedColumnDTOFromJson(json);
}
