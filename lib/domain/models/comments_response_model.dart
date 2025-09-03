import 'package:test_ex1/domain/models/models.dart';

class CommentsResponseModel {
  CommentsResponseModel({required this.commentsList, required this.cursor});

  final List<CommentModel> commentsList;
  final CursorModel cursor;
}
