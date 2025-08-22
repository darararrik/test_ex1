class FollowedTaskRef {
  FollowedTaskRef({
    required this.userId,
    required this.deskId,
    required this.taskId,
  });

  final int userId;
  final int deskId;
  final int taskId;

  @override
  bool operator ==(Object other) =>
      other is FollowedTaskRef &&
      other.userId == userId &&
      other.deskId == deskId &&
      other.taskId == taskId;

  @override
  int get hashCode => Object.hash(userId, deskId, taskId);
}
