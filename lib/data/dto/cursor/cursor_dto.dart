import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/domain/models/cursor.dart';

part 'cursor_dto.freezed.dart';
part 'cursor_dto.g.dart';

@freezed
sealed class CursorDTO with _$CursorDTO {
  const factory CursorDTO({String? afterCursor, String? beforeCursor}) =
      _CursorDTO;

  factory CursorDTO.fromJson(Map<String, dynamic> json) =>
      _$CursorDTOFromJson(json);
}

extension CursorToModel on CursorDTO {
  CursorModel toModel() =>
      CursorModel(afterCursor: afterCursor, beforeCursor: beforeCursor);
}
