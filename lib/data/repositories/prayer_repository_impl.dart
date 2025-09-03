import 'package:test_ex1/data/data.dart';
import 'package:test_ex1/domain/models/comments_response_model.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';

class PrayerRepositoryImpl implements IPrayerRepository {
  PrayerRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final RemoteDataSource _remoteDataSource;

  @override
  Future<void> createPrayer({
    required int columnId,
    required String title,
  }) async {
    final dto = CreatedPrayerDTO(title: title);
    await _remoteDataSource.createPrayer(columnId, dto);
  }

  @override
  Future<void> deletePrayer({required int prayerId}) =>
      _remoteDataSource.deletePrayer(prayerId);

  @override
  Future<PrayerModel> doPrayer({required int prayerId}) async =>
      (await _remoteDataSource.doPrayer(prayerId)).toModel();

  @override
  Future<PrayerModel> getPrayerById({required int prayerId}) async {
    final dto = await _remoteDataSource.getPrayerById(prayerId);
    final subs = await _remoteDataSource.getSubscribedPrayers();
    final isSub = subs.contains(dto);
    if (isSub) {
      return dto.toModel(isSub: isSub);
    } else {
      return dto.toModel();
    }
  }

  @override
  Future<List<PrayerModel>> getPrayersByColumnId({
    required int columnId,
  }) async {
    final response = await _remoteDataSource.getPrayersByColumnId(columnId);
    return response.map((p) => p.toModel()).toList();
  }

  @override
  Future<List<PrayerModel>> getSubscribedPrayers() async {
    final response = await _remoteDataSource.getSubscribedPrayers();
    return response.map((p) => p.toModel(isSub: true)).toList();
  }

  @override
  Future<void> subscribePrayer({required int prayerId}) =>
      _remoteDataSource.subscribePrayer(prayerId);

  @override
  Future<void> unsubscribePrayer({required int prayerId}) =>
      _remoteDataSource.unsubscribePrayer(prayerId);

  @override
  Future<CommentsResponseModel> getComments({
    required int prayerId,
    int limit = 10,
    String? afterCursor,
  }) async => (await _remoteDataSource.getComments(
    prayerId,
    limit,
    afterCursor: afterCursor,
  )).toModel();

  @override
  Future<CommentModel> createComment({
    required int prayerId,
    required String body,
  }) async {
    final bodyDTO = CreatedCommentDTO(body: body);
    return (await _remoteDataSource.createComment(prayerId, bodyDTO)).toModel();
  }
}
