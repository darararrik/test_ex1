import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/domain/models/users_desks/users_desks_model.dart';

abstract class IUsersDesksRepository {
  Future<List<UsersDesksModel>> getUsersDesks();
  Future<List<DeskModel>> getDesksByUserId(int userId);
  Future<List<TaskModel>> getTasksByDeskId(int deskId, int userId);
  Future<void> pray(TaskModel task);

  Future<TaskModel> getTaskById(int taskId, int deskId, int userId);
}
