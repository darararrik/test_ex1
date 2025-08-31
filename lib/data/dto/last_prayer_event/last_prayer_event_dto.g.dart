// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_prayer_event_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LastPrayerEventDTO _$LastPrayerEventDTOFromJson(
  Map<String, dynamic> json,
) => _LastPrayerEventDTO(
  createdAt: const DateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const DateTimeConverter().fromJson(json['updatedAt'] as String),
  deletedAt: _$JsonConverterFromJson<String, DateTime>(
    json['deletedAt'],
    const DateTimeConverter().fromJson,
  ),
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  prayerId: (json['prayerId'] as num).toInt(),
);

Map<String, dynamic> _$LastPrayerEventDTOToJson(_LastPrayerEventDTO instance) =>
    <String, dynamic>{
      'createdAt': const DateTimeConverter().toJson(instance.createdAt),
      'updatedAt': const DateTimeConverter().toJson(instance.updatedAt),
      'deletedAt': _$JsonConverterToJson<String, DateTime>(
        instance.deletedAt,
        const DateTimeConverter().toJson,
      ),
      'id': instance.id,
      'userId': instance.userId,
      'prayerId': instance.prayerId,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
