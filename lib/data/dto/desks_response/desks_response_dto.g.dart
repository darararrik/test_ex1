// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'desks_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DesksResponseDTO _$DesksResponseDTOFromJson(Map<String, dynamic> json) =>
    _DesksResponseDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => DeskDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: CursorDTO.fromJson(json['cursor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DesksResponseDTOToJson(_DesksResponseDTO instance) =>
    <String, dynamic>{'data': instance.data, 'cursor': instance.cursor};
