import 'package:test_ex1/domain/models/models.dart';

abstract class ICommentsRepository {
  Future<CommentModel> createComment({
    required int prayerId,
    required String commentBody,
  });
  Future<CommentModel> getComments({required int prayerId, int limit = 10});
}
