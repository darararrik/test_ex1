
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
    required this.isSub,
  });
  factory PrayerModel.create() => PrayerModel(
    createdAt: DateTime.fromMillisecondsSinceEpoch(0),
    updatedAt: DateTime.fromMillisecondsSinceEpoch(0),
    deletedAt: DateTime.fromMillisecondsSinceEpoch(0),
    id: -1,
    title: "",
    columnId: -1,
    completesCount: "",
    subscribersCount: "",
    myPrayCount: "",
    otherPrayCount: "",
    isSub: false,
  );

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
  final LastPrayerEventModel? lastPrayerEvent;
  final bool isSub;

  Status get getActualStatus {
    if (lastPrayerEvent == null) {
      return Status.moreDay;
    } else {
      final now = DateTime.now();
      final nowUtc = now.toUtc();
      final lastPray = lastPrayerEvent!.updatedAt;
      final diff = nowUtc.difference(lastPray);
      if (diff.inHours < 1) return Status.lessHour;
      if (diff.inHours < 24) return Status.lessDay;
      return Status.moreDay;
    }
  }
}

class LastPrayerEventModel {
  LastPrayerEventModel({
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
