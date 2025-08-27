import 'package:freezed_annotation/freezed_annotation.dart';
part 'created_prayer_dto.freezed.dart';
part 'created_prayer_dto.g.dart';

@freezed
sealed class CreatedPrayerDTO with _$CreatedPrayerDTO {
  const factory CreatedPrayerDTO({
    required String title,
    required String description,
  }) = _CreatedPrayerDTO;
  factory CreatedPrayerDTO.fromJson(Map<String, dynamic> json) =>
      _$CreatedPrayerDTOFromJson(json);
}
