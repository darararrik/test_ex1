import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/utils/converters/date_time_converter.dart';
import 'package:test_ex1/domain/models/models.dart';

part 'column_dto.freezed.dart';
part 'column_dto.g.dart';

@freezed
sealed class ColumnDTO with _$ColumnDTO {
  const factory ColumnDTO({
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() required DateTime updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
    required int id,
    required String title,
    String? description,
    required int userId,
  }) = _ColumnDTO;
  factory ColumnDTO.fromJson(Map<String, dynamic> json) =>
      _$ColumnDTOFromJson(json);
}

extension ColumnToModel on ColumnDTO {
  ColumnModel toModel() => ColumnModel(
    id: id,
    title: title,
    description: description,
    userId: userId,
  );
}
