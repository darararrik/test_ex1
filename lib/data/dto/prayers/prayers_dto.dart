import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_ex1/data/utils/converters/date_time_converter.dart';

part 'prayers_dto.freezed.dart';
part 'prayers_dto.g.dart';

@freezed
sealed class PrayersDTO with _$PrayersDTO {
  factory PrayersDTO({
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() required DateTime updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
    required int id,
    required String title,
    required String description,
    required int columnId,
    required int completesCount,
    required int subscribersCount,
    required int myPrayCount,
    required int otherPrayCount,
  }) = _PrayersDTO;

  factory PrayersDTO.fromJson(Map<String, dynamic> json) =>
      _$PrayersDTOFromJson(json);
}
