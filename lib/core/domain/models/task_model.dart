import 'package:test_ex1/core/domain/models/comment_model.dart';

class TaskModel {
  const TaskModel({
    required this.status,
    required this.totalPrayers,
    required this.myPrayers,
    required this.otherPrayers,
    this.comments,
  });
  final Status status;
  final int totalPrayers;
  final int myPrayers;
  final int otherPrayers;
  final List<CommentModel>? comments;
}

enum Status {
  lessHour("Меньше часа"),
  lessDay("Меньше дня"),
  moreDay("Больше дня");

  const Status(this.statusStr);
  final String statusStr;
}
