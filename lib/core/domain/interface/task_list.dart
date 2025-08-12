import 'package:flutter/material.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';

abstract interface class ITasksList extends ChangeNotifier {
  TaskModel getTaskById(int id);
  void pray(int taskId);
  Status getStatus(int id);
}
