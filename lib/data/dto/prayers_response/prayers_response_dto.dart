import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/data/dto/cursor/cursor_dto.dart';
import 'package:test_ex1/data/dto/prayer/prayer_dto.dart';

part 'prayers_response_dto.freezed.dart';
part 'prayers_response_dto.g.dart';

@freezed
sealed class PrayersResponseDTO with _$PrayersResponseDTO {
  const factory PrayersResponseDTO({
    required List<PrayerDTO> data,
    required CursorDTO cursor,
  }) = _PrayersResponseDTO;

  factory PrayersResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$PrayersResponseDTOFromJson(json);
}
