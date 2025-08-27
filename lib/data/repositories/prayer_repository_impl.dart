import 'package:test_ex1/data/data_source/prayers/remote/remote_ds_prayers.dart';
import 'package:test_ex1/data/dto/created_prayer/created_prayer_dto.dart';
import 'package:test_ex1/data/dto/prayers/prayers_dto.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';

class PrayerRepositoryImpl implements IPrayerRepository {
  PrayerRepositoryImpl({required RemoteDSPrayers remoteDSPrayers})
    : _remoteDSPrayers = remoteDSPrayers;

  final RemoteDSPrayers _remoteDSPrayers;

  @override
  Future<List<PrayersDTO>> createPrayer({
    required int columnId,
    required CreatedPrayerDTO prayer,
  }) async {
    final response = await _remoteDSPrayers.createPrayerByColumnId(
      columnId,
      prayer,
    );
    return response.data;
  }

  @override
  Future<void> deletePrayer({required int prayerId}) =>
      _remoteDSPrayers.deletePrayerById(prayerId);

  @override
  Future<PrayersDTO> doPrayer({required int prayerId}) =>
      _remoteDSPrayers.doPrayerById(prayerId);
  @override
  Future<PrayersDTO> getPrayerById({required int prayerId}) =>
      _remoteDSPrayers.getPrayerById(prayerId);

  @override
  Future<List<PrayersDTO>> getPrayersByColumnId({required int columnId}) async {
    final response = await _remoteDSPrayers.getPrayersByColumnId(columnId);
    return response.data;
  }

  @override
  Future<List<PrayersDTO>> getSubscribedPrayers() async {
    final response = await _remoteDSPrayers.getSubscribedPrayers();
    return response.data;
  }

  @override
  Future<PrayersDTO> subscribePrayer({required int prayerId}) =>
      _remoteDSPrayers.subscribe(prayerId);
  @override
  Future<PrayersDTO> unsubscribePrayer({required int prayerId}) =>
      _remoteDSPrayers.unsubscribe(prayerId);
}
