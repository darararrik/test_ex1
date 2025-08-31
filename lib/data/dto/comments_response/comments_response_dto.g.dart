// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentsResponseDTO _$CommentsResponseDTOFromJson(Map<String, dynamic> json) =>
    _CommentsResponseDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => CommentDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: CursorDTO.fromJson(json['cursor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CommentsResponseDTOToJson(
  _CommentsResponseDTO instance,
) => <String, dynamic>{'data': instance.data, 'cursor': instance.cursor};
