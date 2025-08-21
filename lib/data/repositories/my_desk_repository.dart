import 'package:test_ex1/data/data_source/desks/desks.dart';
import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';
import 'package:test_ex1/domain/repositories/my_desks_repository.dart';

class MyDeskRepositoryImpl implements IMyDesksRepository {
  MyDeskRepositoryImpl({required MyDesksLocalDS localDS}) : _localDS = localDS;
  final MyDesksLocalDS _localDS;

  @override
  Future<void> addDesk(String title) => _localDS.addDesk(title);
  @override
  Future<void> addTask(String title, int deskId) =>
      _localDS.addTask(title, deskId);
  @override
  Future<void> pray(int taskId, int deskId) => _localDS.pray(taskId, deskId);

  @override
  Future<List<DeskModel>> getDesks() async => _localDS.getDesks;
  @override
  Future<List<TaskModel>> getTasksByDeskId(int deskId) =>
      _localDS.getTasksByDeskId(deskId);

  @override
  Future<void> removeDeskById(int id) => _localDS.removeDesk(id);

  @override
  Future<void> removeTaskById(int taskId, int deskId) =>
      _localDS.removeTaskById(taskId, deskId);

  @override
  Future<void> renameDesk(int id, String newTitle) =>
      _localDS.renameDesk(id, newTitle);

  @override
  Future<void> renameTask(String newTitle, int taskId, int deskId) =>
      _localDS.renameTask(newTitle, taskId, deskId);

  @override
  Future<TaskModel> getTaskById(int taskId, int deskId) =>
      _localDS.getTaskByDeskId(taskId, deskId);
}
