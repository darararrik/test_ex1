import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/data/utils/converters/date_time_converter.dart';

part 'comments_dto.freezed.dart';
part 'comments_dto.g.dart';

@freezed
sealed class CommentsDTO with _$CommentsDTO {
  factory CommentsDTO({
    @DateTimeConverter() required DateTime createdAt,
    required int id,
    required String body,
    required int prayerId,
    required int userId,
  }) = _CommentsDTO;

  factory CommentsDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentsDTOFromJson(json);
}
