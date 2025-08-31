// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayers_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrayersResponseDTO _$PrayersResponseDTOFromJson(Map<String, dynamic> json) =>
    _PrayersResponseDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => PrayerDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: CursorDTO.fromJson(json['cursor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrayersResponseDTOToJson(_PrayersResponseDTO instance) =>
    <String, dynamic>{'data': instance.data, 'cursor': instance.cursor};
