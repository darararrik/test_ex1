// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'columns_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColumnsDTO _$ColumnsDTOFromJson(Map<String, dynamic> json) => _ColumnsDTO(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String,
  userId: (json['userId'] as num).toInt(),
);

Map<String, dynamic> _$ColumnsDTOToJson(_ColumnsDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'userId': instance.userId,
    };
