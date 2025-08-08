import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_model.freezed.dart'; // название файла под себя

@freezed
sealed class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int id,
    required String name,
    required Status status,
    required int totalPrayers,
    required int myPrayers,
    required int otherPrayers,
    required int members,
    required int complete,
    required DateTime date,
  }) = _TaskModel;

  // Фабричный конструктор для создания с default-значениями
  factory TaskModel.create(int id, String name) => TaskModel(
    id: id,
    name: name,
    status: Status.lessHour,
    totalPrayers: 0,
    myPrayers: 0,
    otherPrayers: 0,
    complete: 0,
    members: 0,
    date: DateTime.now(),
  );
}

enum Status {
  lessHour("Меньше часа"),
  lessDay("Меньше дня"),
  moreDay("Больше дня");

  const Status(this.statusStr);
  final String statusStr;
}
