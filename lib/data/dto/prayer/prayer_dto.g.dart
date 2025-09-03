// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrayerDTO _$PrayerDTOFromJson(Map<String, dynamic> json) => _PrayerDTO(
  createdAt: const DateTimeConverter().fromJson(json['createdAt'] as String),
  updatedAt: const DateTimeConverter().fromJson(json['updatedAt'] as String),
  deletedAt: _$JsonConverterFromJson<String, DateTime>(
    json['deletedAt'],
    const DateTimeConverter().fromJson,
  ),
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String?,
  columnId: (json['columnId'] as num).toInt(),
  completesCount: (json['completesCount'] as num).toInt(),
  subscribersCount: (json['subscribersCount'] as num).toInt(),
  myPrayCount: (json['myPrayCount'] as num).toInt(),
  otherPrayCount: (json['otherPrayCount'] as num).toInt(),
  lastPrayerEvent: json['lastPrayerEvent'] == null
      ? null
      : LastPrayerEventDTO.fromJson(
          json['lastPrayerEvent'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PrayerDTOToJson(_PrayerDTO instance) =>
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
      'columnId': instance.columnId,
      'completesCount': instance.completesCount,
      'subscribersCount': instance.subscribersCount,
      'myPrayCount': instance.myPrayCount,
      'otherPrayCount': instance.otherPrayCount,
      'lastPrayerEvent': instance.lastPrayerEvent,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
