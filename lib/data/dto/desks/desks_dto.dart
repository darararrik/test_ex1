import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/data/utils/converters/date_time_converter.dart';

part 'desks_dto.freezed.dart';
part 'desks_dto.g.dart';

@freezed
sealed class DesksDTO with _$DesksDTO {
  factory DesksDTO({
    required int id,
    required String name,
  }) = _DesksDTO;

  factory DesksDTO.fromJson(Map<String, dynamic> json) =>
      _$DesksDTOFromJson(json);
}
