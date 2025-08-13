class FollowedTaskRef {
  FollowedTaskRef({
    required this.ownerId,
    required this.deskId,
    required this.taskId,
  });

  final int ownerId;
  final int deskId;
  final int taskId;

  @override
  bool operator ==(Object other) =>
      other is FollowedTaskRef &&
      other.ownerId == ownerId &&
      other.deskId == deskId &&
      other.taskId == taskId;

  @override
  int get hashCode => Object.hash(ownerId, deskId, taskId);
}
