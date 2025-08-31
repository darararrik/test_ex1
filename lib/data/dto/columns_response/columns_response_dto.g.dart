// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'columns_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ColumnsResponseDTO _$ColumnsResponseDTOFromJson(Map<String, dynamic> json) =>
    _ColumnsResponseDTO(
      data: (json['data'] as List<dynamic>)
          .map((e) => ColumnDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      cursor: CursorDTO.fromJson(json['cursor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ColumnsResponseDTOToJson(_ColumnsResponseDTO instance) =>
    <String, dynamic>{'data': instance.data, 'cursor': instance.cursor};
