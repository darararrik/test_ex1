import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart'; // название файла под себя

@freezed
sealed class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int id,
    required String name,
    required int totalPrayers,
    required int myPrayers,
    required int otherPrayers,
    required int members,
    required int complete,
    required DateTime date,
    required DateTime lastPray,
  }) = _TaskModel;
  const TaskModel._();

  factory TaskModel.create({
    required int id,
    required String name,
    DateTime? lastPray,
  }) => TaskModel(
    id: id,
    name: name,
    totalPrayers: 0,
    myPrayers: 0,
    otherPrayers: 0,
    complete: 0,
    members: 0,
    date: DateTime.now(),
    lastPray: lastPray ?? DateTime.now(),
  );

  Status get getActualStatus {
    final diff = DateTime.now().difference(lastPray);

    if (diff.inHours < 1) return Status.lessHour;
    if (diff.inHours < 24) return Status.lessDay;
    return Status.moreDay;
  }
}

enum Status {
  lessHour("Меньше часа"),
  lessDay("Меньше дня"),
  moreDay("Больше дня");

  const Status(this.statusStr);
  final String statusStr;
}
