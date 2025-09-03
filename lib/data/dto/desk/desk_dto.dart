import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/utils/converters/date_time_converter.dart';
import 'package:test_ex1/domain/models/models.dart';

part 'desk_dto.freezed.dart';
part 'desk_dto.g.dart';

@freezed
sealed class DeskDTO with _$DeskDTO {
  factory DeskDTO({
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() required DateTime updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
    required int id,
    required String name,
  }) = _DeskDTO;

  factory DeskDTO.fromJson(Map<String, dynamic> json) =>
      _$DeskDTOFromJson(json);
}

extension DeskMapper on DeskDTO {
  DeskModel toModel() => DeskModel(id: id, name: name);
}
