import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/dto/cursor/cursor_dto.dart';
import 'package:test_ex1/data/dto/desk/desk_dto.dart';
import 'package:test_ex1/domain/models/desks_response.dart';

part 'desks_response_dto.freezed.dart';
part 'desks_response_dto.g.dart';

@freezed
sealed class DesksResponseDTO with _$DesksResponseDTO {
  const factory DesksResponseDTO({
    required List<DeskDTO> data,
    required CursorDTO cursor,
  }) = _DesksResponseDTO;

  factory DesksResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$DesksResponseDTOFromJson(json);
}

extension DeskResponseMapper on DesksResponseDTO {
  DesksResponseModel toModel() => DesksResponseModel(
    desksList: data.map((d) => d.toModel()).toList(),
    cursor: cursor.toModel(),
  );
}
