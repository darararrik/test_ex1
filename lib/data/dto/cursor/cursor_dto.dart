import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_dto.freezed.dart';
part 'cursor_dto.g.dart';

@freezed
sealed class CursorDTO with _$CursorDTO {
  const factory CursorDTO({String? afterCursor, String? beforeCursor}) =
      _CursorDTO;

  factory CursorDTO.fromJson(Map<String, dynamic> json) =>
      _$CursorDTOFromJson(json);
}
