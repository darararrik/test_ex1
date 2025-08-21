// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:test_ex1/data/data_source/users_desks/local/local_users_desks_data_source.dart';
import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/domain/models/users_desks/users_desks_model.dart';
import 'package:test_ex1/domain/repositories/users_desks_repository.dart';

class UsersDesksRepositoryImpl implements IUsersDesksRepository {
  UsersDesksRepositoryImpl({required UsersDesksLocalDS localDS})
    : _localDS = localDS;
  final UsersDesksLocalDS _localDS;

  @override
  Future<List<UsersDesksModel>> getUsersDesks() async => _localDS.getUsersDesks;

  @override
  Future<List<DeskModel>> getDesksByUserId(int userId) async =>
      _localDS.getDesksByUserId(userId);

  @override
  Future<List<TaskModel>> getTasksByDeskId(int deskId) async =>
      _localDS.getTasksByDeskId(deskId);

  @override
  Future<void> pray(TaskModel task) =>
      _localDS.pray(task.id, task.deskId, task.userId);
}
