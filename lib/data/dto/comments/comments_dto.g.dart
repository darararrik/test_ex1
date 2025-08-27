// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CommentsDTO _$CommentsDTOFromJson(Map<String, dynamic> json) => _CommentsDTO(
  createdAt: const DateTimeConverter().fromJson(json['createdAt'] as String),
  id: (json['id'] as num).toInt(),
  body: json['body'] as String,
  prayerId: (json['prayerId'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
);

Map<String, dynamic> _$CommentsDTOToJson(_CommentsDTO instance) =>
    <String, dynamic>{
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'id': instance.id,
      'body': instance.body,
      'prayerId': instance.prayerId,
      'userId': instance.userId,
    };
