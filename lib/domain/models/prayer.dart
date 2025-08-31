import 'package:test_ex1/data/dto/last_prayer_event/last_prayer_event_dto.dart';

class PrayerModel {
  PrayerModel({
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.id,
    required this.title,
    this.description,
    required this.columnId,
    required this.completesCount,
    required this.subscribersCount,
    required this.myPrayCount,
    required this.otherPrayCount,
    this.lastPrayerEvent,
  });

  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final int id;
  final String title;
  String? description;
  final int columnId;
  final String completesCount;
  final String subscribersCount;
  final String myPrayCount;
  final String otherPrayCount;
  final LastPrayerEvent? lastPrayerEvent;

  Status get getActualStatus {
    if (lastPrayerEvent == null) {
      return Status.lessHour;
    } else {
      final diff = DateTime.now().difference(lastPrayerEvent!.updatedAt);
      if (diff.inHours < 1) return Status.lessHour;
      if (diff.inHours < 24) return Status.lessDay;
      return Status.moreDay;
    }
  }
}

class LastPrayerEvent {
  LastPrayerEvent({
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.userId,
    required this.id,
    required this.prayerId,
  });

  final DateTime? deletedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int userId;
  final int id;
  final int prayerId;
}

enum Status {
  lessHour("Меньше часа"),
  lessDay("Меньше дня"),
  moreDay("Больше дня");

  const Status(this.statusStr);
  final String statusStr;
}
