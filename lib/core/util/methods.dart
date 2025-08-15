import 'package:flutter/material.dart';

import 'package:test_ex1/core/domain/models/task/task_model.dart';
import 'package:test_ex1/core/presentation/widgets/dialogs/sorry_dialog.dart';
import 'package:test_ex1/core/util/util.dart';

void handlePrayButtonPressed(BuildContext context, TaskModel task) {
  if (task.getActualStatus == Status.lessHour) {
    showDialog(context: context, builder: (context) => const SorryDialog());
  } else {
    final notif = context.currentNotifier;
    notif?.pray(taskId: task.id, deskId: task.deskId, userId: task.userId);
  }
}
