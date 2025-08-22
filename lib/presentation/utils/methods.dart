import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_ex1/domain/blocs/my_desks/my_desks_bloc.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/presentation/utils/utils.dart';
import 'package:test_ex1/presentation/widgets/dialogs/sorry_dialog.dart';

void handlePrayButtonPressed(
  BuildContext context,
  TaskModel task,
  VoidCallback blocAction,
) {
  if (task.getActualStatus == Status.lessHour) {
    showDialog(context: context, builder: (context) => const SorryDialog());
  } else {
    blocAction.call();
  }
}
