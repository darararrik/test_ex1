// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desk_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DeskDTO _$DeskDTOFromJson(Map<String, dynamic> json) => _DeskDTO(
  createdAt: const DateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const DateTimeConverter().fromJson(json['updatedAt'] as String),
  deletedAt: _$JsonConverterFromJson<String, DateTime>(
    json['deletedAt'],
    const DateTimeConverter().fromJson,
  ),
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$DeskDTOToJson(_DeskDTO instance) => <String, dynamic>{
  'createdAt': const DateTimeConverter().toJson(instance.createdAt),
  'updatedAt': const DateTimeConverter().toJson(instance.updatedAt),
  'deletedAt': _$JsonConverterToJson<String, DateTime>(
    instance.deletedAt,
    const DateTimeConverter().toJson,
  ),
  'id': instance.id,
  'name': instance.name,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
