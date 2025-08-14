import 'package:flutter/material.dart';
import 'package:test_ex1/core/domain/models/task/task_model.dart';

abstract interface class ITasksList extends ChangeNotifier {
  TaskModel? getTaskById({required int taskId, int? userId, int? deskId});
  Status? getStatus({required int taskId, int? userId, int? deskId});
  TaskModel pray({required int taskId, int? userId, int? deskId});
}
