// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_prayer_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatedPrayerDTO _$CreatedPrayerDTOFromJson(Map<String, dynamic> json) =>
    _CreatedPrayerDTO(
      title: json['title'] as String,
      description: json['description'] as String? ?? "",
    );

Map<String, dynamic> _$CreatedPrayerDTOToJson(_CreatedPrayerDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
