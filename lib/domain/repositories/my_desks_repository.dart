import 'package:test_ex1/domain/models/desk/desk_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';

abstract class IMyDesksRepository {
  Future<List<DeskModel>> getDesks();
  Future<void> addDesk(String title);
  Future<void> addTask(String title, int deskId);
  Future<void> removeDeskById(int id);
  Future<void> removeTaskById(int taskId, int deskId);
  Future<void> renameTask(String newTitle, int taskId, int deskId);
  Future<void> renameDesk(int id, String newTitle);
  Future<void> pray(int taskId, int deskId);
  Future<List<TaskModel>> getTasksByDeskId(int deskId);

  Future<TaskModel?> getTaskById(int taskId, int deskId);
}
