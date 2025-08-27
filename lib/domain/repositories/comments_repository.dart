import 'package:test_ex1/data/dto/comments_response/comments_response_dto.dart';
import 'package:test_ex1/data/dto/created_comment/created_comment_dto.dart';
import 'package:test_ex1/data/dto/comments/comment.dart';

abstract class ICommentsRepository {
  Future<CommentsDTO> createComment({
    required int prayerId,
    required CreatedCommentDTO comment,
  });
  Future<CommentsResponseDTO> getComments({
    required int prayerId,
    int limit = 10,
  });
}
