import 'package:test_ex1/data/dto/created_prayer/created_prayer_dto.dart';
import 'package:test_ex1/domain/models/models.dart';

abstract class IPrayerRepository {
  //TODO: тут пока не понятно
  Future<List<PrayerModel>> getPrayersByColumnId({required int columnId});
  Future<List<PrayerModel>> createPrayer({
    required int columnId,
    required String title,
  });
  //TODO: тут пока не понятно
  Future<List<PrayerModel>> getSubscribedPrayers();
  Future<PrayerModel> subscribePrayer({required int prayerId});
  Future<PrayerModel> unsubscribePrayer({required int prayerId});
  // Future<PrayersDTO> completePrayer({required int prayerId});
  // Future<PrayersDTO> removeCompletePrayer({required int prayerId});
  Future<PrayerModel> doPrayer({required int prayerId});
  Future<PrayerModel> getPrayerById({required int prayerId});
  Future<void> deletePrayer({required int prayerId});
}
