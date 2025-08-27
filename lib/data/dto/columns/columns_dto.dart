import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/data/utils/converters/date_time_converter.dart';

part 'columns_dto.freezed.dart';
part 'columns_dto.g.dart';

@freezed
sealed class ColumnsDTO with _$ColumnsDTO {
  const factory ColumnsDTO({
    required int id,
    required String title,
    required String description,
    required int userId,
  }) = _ColumnsDTO;
  factory ColumnsDTO.fromJson(Map<String, dynamic> json) =>
      _$ColumnsDTOFromJson(json);
}
