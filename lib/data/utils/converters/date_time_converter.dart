import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    try {
      final utcTime = DateTime.parse(json).toUtc();
      return utcTime;
    } catch (_) {
      try {
        // fallback: dd.MM.yyyy HH:mm
        return DateFormat('dd.MM.yyyy HH:mm').parse(json);
      } catch (_) {
        // если вообще не удалось — возвращаем "нулевую" дату
        return DateTime.fromMillisecondsSinceEpoch(0);
      }
    }
  }

  @override
  String toJson(DateTime object) {
    // тут реши, какой формат тебе нужен в JSON:
    // ISO8601:
    return object.toUtc().toIso8601String();
    // или локальный формат:
    // return DateFormat('dd.MM.yyyy HH:mm').format(object);
  }
}
