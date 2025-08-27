import 'package:test_ex1/data/dto/created_prayer/created_prayer_dto.dart';
import 'package:test_ex1/data/dto/prayers/prayers_dto.dart';

abstract class IPrayerRepository {
  //TODO: тут пока не понятно
  Future<List<PrayersDTO>> getPrayersByColumnId({required int columnId});
  Future<List<PrayersDTO>> createPrayer({
    required int columnId,
    required CreatedPrayerDTO prayer,
  });
  //TODO: тут пока не понятно
  Future<List<PrayersDTO>> getSubscribedPrayers();
  Future<PrayersDTO> subscribePrayer({required int prayerId});
  Future<PrayersDTO> unsubscribePrayer({required int prayerId});
  // Future<PrayersDTO> completePrayer({required int prayerId});
  // Future<PrayersDTO> removeCompletePrayer({required int prayerId});
  Future<PrayersDTO> doPrayer({required int prayerId});
  Future<PrayersDTO> getPrayerById({required int prayerId});
  Future<void> deletePrayer({required int prayerId});
}
