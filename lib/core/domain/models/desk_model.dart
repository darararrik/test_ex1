import 'package:test_ex1/core/domain/models/task_model.dart';

class DeskModel {
  const DeskModel({required this.id, required this.title, this.tasks});
  final int id;
  final String title;
  final List<TaskModel>? tasks;
}
