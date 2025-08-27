import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    try {
      return DateFormat('dd.MM.yyyy HH:mm').parse(json);
    } catch (e) {
      return DateTime.fromMillisecondsSinceEpoch(0);
    }
  }

  @override
  String toJson(DateTime object) {
    return DateFormat('dd.MM.yyyy').format(object);
  }
}
