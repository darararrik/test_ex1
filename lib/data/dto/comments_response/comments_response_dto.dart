import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/dto/comment/comment_dto.dart';
import 'package:test_ex1/data/dto/cursor/cursor_dto.dart';
import 'package:test_ex1/domain/models/comments_response_model.dart';

part 'comments_response_dto.freezed.dart';
part 'comments_response_dto.g.dart';

@freezed
sealed class CommentsResponseDTO with _$CommentsResponseDTO {
  const factory CommentsResponseDTO({
    required List<CommentDTO> data,
    required CursorDTO cursor,
  }) = _CommentsResponseDTO;

  factory CommentsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentsResponseDTOFromJson(json);
}

extension CommentsResponseMapper on CommentsResponseDTO {
  CommentsResponseModel toModel() => CommentsResponseModel(
    commentsList: data.map((c) => c.toModel()).toList(),
    cursor: cursor.toModel(),
  );
}
