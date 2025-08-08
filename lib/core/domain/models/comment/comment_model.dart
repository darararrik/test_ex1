class CommentModel {
  const CommentModel({
    required this.id,
    required this.date,
    required this.comment,
    required this.commentatorName,
  });
  final int id;
  final DateTime date;
  final String commentatorName;
  final String comment;
}
