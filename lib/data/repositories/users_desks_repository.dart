// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:test_ex1/data/data_source/users_desks/local/local_users_desks_data_source.dart';
import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/domain/models/users_desks/users_desks_model.dart';
import 'package:test_ex1/domain/repositories/users_desks_repository.dart';

class UsersDesksRepositoryImpl implements IUsersDesksRepository {
  UsersDesksRepositoryImpl({required LocalDSUsersDesks localDS})
    : _localDS = localDS;
  final LocalDSUsersDesks _localDS;

  @override
  Future<List<UsersDesksModel>> getUsersDesks() async => _localDS.getUsersDesks;

  @override
  Future<List<DeskModel>> getDesksByUserId(int userId) async =>
      _localDS.getDesksByUserId(userId);

  @override
  Future<List<TaskModel>> getTasksByDeskId(int deskId, int userId) async =>
      _localDS.getTasksByDeskId(deskId, userId);

  @override
  Future<void> pray(TaskModel task) =>
      _localDS.pray(task.id, task.deskId, task.userId);

  @override
  Future<TaskModel> getTaskById(int taskId, int deskId, int userId) =>
      _localDS.getTaskById(taskId, deskId, userId);
}
