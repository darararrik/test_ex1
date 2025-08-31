import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/utils/converters/date_time_converter.dart';
import 'package:test_ex1/domain/models/comment.dart';

part 'comment_dto.freezed.dart';
part 'comment_dto.g.dart';

@freezed
sealed class CommentDTO with _$CommentDTO {
  factory CommentDTO({
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() required DateTime updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
    required int id,
    required String body,
    required int prayerId,
    required int userId,
  }) = _CommentDTO;

  factory CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentDTOFromJson(json);
}

extension CommentToModel on CommentDTO {
  CommentModel toModel() => CommentModel(
    body: body,
    createdAt: createdAt,
    deletedAt: deletedAt,
    id: id,
    prayerId: prayerId,
    updatedAt: updatedAt,
    userId: userId,
  );
}
