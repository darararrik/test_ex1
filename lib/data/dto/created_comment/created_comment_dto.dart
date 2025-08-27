import 'package:freezed_annotation/freezed_annotation.dart';
part 'created_comment_dto.freezed.dart';
part 'created_comment_dto.g.dart';

@freezed
sealed class CreatedCommentDTO with _$CreatedCommentDTO {
  const factory CreatedCommentDTO({required String body}) = _CreatedCommentDTO;
  factory CreatedCommentDTO.fromJson(Map<String, dynamic> json) =>
      _$CreatedCommentDTOFromJson(json);
}
