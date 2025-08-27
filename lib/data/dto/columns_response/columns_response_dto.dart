import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/data/dto/columns/columns_dto.dart';
import 'package:test_ex1/data/dto/comments/comments_dto.dart';
import 'package:test_ex1/data/dto/cursor/cursor_dto.dart';
part 'columns_response_dto.freezed.dart';
part 'columns_response_dto.g.dart';

@freezed
sealed class ColumnsResponseDTO with _$ColumnsResponseDTO {
  const factory ColumnsResponseDTO({
    required List<ColumnsDTO> data,
    required CursorDTO cursor,
  }) = _ColumnsResponseDTO;

  factory ColumnsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ColumnsResponseDTOFromJson(json);
}
