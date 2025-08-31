class CommentModel {
  CommentModel({
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.id,
    required this.body,
    required this.prayerId,
    required this.userId,
  });

  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  final int id;
  final String body;
  final int prayerId;
  final int userId;
}
