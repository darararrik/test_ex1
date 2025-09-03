// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColumnDTO _$ColumnDTOFromJson(Map<String, dynamic> json) => _ColumnDTO(
  createdAt: const DateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const DateTimeConverter().fromJson(json['updatedAt'] as String),
  deletedAt: _$JsonConverterFromJson<String, DateTime>(
    json['deletedAt'],
    const DateTimeConverter().fromJson,
  ),
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String?,
  userId: (json['userId'] as num).toInt(),
);

Map<String, dynamic> _$ColumnDTOToJson(_ColumnDTO instance) =>
    <String, dynamic>{
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const DateTimeConverter().toJson(instance.updatedAt),
      'deletedAt': _$JsonConverterToJson<String, DateTime>(
        instance.deletedAt,
        const DateTimeConverter().toJson,
      ),
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'userId': instance.userId,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
