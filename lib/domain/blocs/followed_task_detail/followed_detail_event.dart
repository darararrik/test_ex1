part of 'followed_detail_bloc.dart';

@freezed
class FollowedDetailEvent with _$FollowedDetailEvent {
  const factory FollowedDetailEvent.getTaskById(
    int taskId,
    int deskId,
    int userId,
  ) = _GetTaskByIdEvent;
  const factory FollowedDetailEvent.pray(TaskModel task) = _PrayEvent;
}
