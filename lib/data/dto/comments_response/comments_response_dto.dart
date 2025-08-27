import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/data/dto/comments/comments_dto.dart';
import 'package:test_ex1/data/dto/cursor/cursor_dto.dart';
part 'comments_response_dto.freezed.dart';
part 'comments_response_dto.g.dart';
@freezed
sealed class CommentsResponseDTO with _$CommentsResponseDTO {
  const factory CommentsResponseDTO({
    required List<CommentsDTO> data,
    required CursorDTO cursor,
  }) = _CommentsResponseDTO;

  factory CommentsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseDTOFromJson(json);
}
