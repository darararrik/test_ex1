import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/dto/last_prayer_event/last_prayer_event_dto.dart';
import 'package:test_ex1/data/utils/converters/date_time_converter.dart';
import 'package:test_ex1/domain/models/models.dart';

part 'prayer_dto.freezed.dart';
part 'prayer_dto.g.dart';

@freezed
sealed class PrayerDTO with _$PrayerDTO {
  factory PrayerDTO({
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() required DateTime updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
    required int id,
    required String title,
    String? description,
    required int columnId,
    required int completesCount,
    required int subscribersCount,
    required int myPrayCount,
    required int otherPrayCount,
    LastPrayerEventDTO? lastPrayerEvent,
  }) = _PrayerDTO;

  factory PrayerDTO.fromJson(Map<String, dynamic> json) =>
      _$PrayerDTOFromJson(json);
}

extension PrayerToModel on PrayerDTO {
  PrayerModel toModel({bool isSub = false}) => PrayerModel(
    createdAt: createdAt,
    updatedAt: updatedAt,
    deletedAt: deletedAt,
    id: id,
    title: title,
    description: description,
    columnId: columnId,
    completesCount: completesCount.toString(),
    subscribersCount: subscribersCount.toString(),
    myPrayCount: myPrayCount.toString(),
    otherPrayCount: otherPrayCount.toString(),
    lastPrayerEvent: lastPrayerEvent?.toModel(),
    isSub: isSub,
  );
}
