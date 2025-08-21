import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/models/task/task_model.dart';

part 'desk_model.freezed.dart';

@freezed
sealed class DeskModel with _$DeskModel {
  const factory DeskModel({
    required int id,
    required int userId,
    required String title,
    required List<TaskModel> tasks,
  }) = _DeskModel;

}
