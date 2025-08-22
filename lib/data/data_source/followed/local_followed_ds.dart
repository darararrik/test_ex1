import 'package:test_ex1/data/data_source/desks/local/local_desks_ds.dart';
import 'package:test_ex1/data/data_source/users_desks/local/local_users_desks_data_source.dart';
import 'package:test_ex1/data/dto/followed_task_ref/followed_task_ref_model.dart';
import 'package:test_ex1/domain/models/task/task_model.dart';

class LocalDSFollowed {
  final List<FollowedTaskRef> _refs = [];

  List<FollowedTaskRef> get refs => List.unmodifiable(_refs);

  Future<void> addTask(FollowedTaskRef taskRef) async {
    if (!_refs.contains(taskRef)) {
      _refs.add(taskRef);
    }
  }

  Future<void> removeTask(FollowedTaskRef taskRef) async {
    _refs.remove(taskRef);
  }
}
