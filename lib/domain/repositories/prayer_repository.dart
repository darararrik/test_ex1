import 'package:test_ex1/domain/models/comments_response_model.dart';
import 'package:test_ex1/domain/models/models.dart';

abstract class IPrayerRepository {
  Future<List<PrayerModel>> getPrayersByColumnId({required int columnId});
  Future<void> createPrayer({required int columnId, required String title});
  Future<List<PrayerModel>> getSubscribedPrayers();
  Future<void> subscribePrayer({required int prayerId});
  Future<void> unsubscribePrayer({required int prayerId});
  // Future<PrayersDTO> completePrayer({required int prayerId});
  // Future<PrayersDTO> removeCompletePrayer({required int prayerId});
  Future<PrayerModel> doPrayer({required int prayerId});
  Future<PrayerModel> getPrayerById({required int prayerId});
  Future<void> deletePrayer({required int prayerId});
  Future<CommentsResponseModel> getComments({required int prayerId});
  Future<CommentModel> createComment({
    required int prayerId,
    required String body,
  });
}
