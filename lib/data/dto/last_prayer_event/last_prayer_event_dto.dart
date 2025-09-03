import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/utils/converters/date_time_converter.dart';
import 'package:test_ex1/domain/models/prayer.dart';

part 'last_prayer_event_dto.freezed.dart';
part 'last_prayer_event_dto.g.dart';

@freezed
sealed class LastPrayerEventDTO with _$LastPrayerEventDTO {
  factory LastPrayerEventDTO({
    @DateTimeConverter() required DateTime createdAt,
    @DateTimeConverter() required DateTime updatedAt,
    @DateTimeConverter() DateTime? deletedAt,
    required int id,
    required int userId,
    required int prayerId,
  }) = _LastPrayerEventDTO;

  factory LastPrayerEventDTO.fromJson(Map<String, dynamic> json) =>
      _$LastPrayerEventDTOFromJson(json);
}

extension LastPrayerEventToModel on LastPrayerEventDTO {
  LastPrayerEventModel toModel() => LastPrayerEventModel(
    deletedAt: deletedAt,
    createdAt: createdAt,
    updatedAt: updatedAt,
    userId: userId,
    id: id,
    prayerId: prayerId,
  );
}
