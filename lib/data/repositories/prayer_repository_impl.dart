import 'package:test_ex1/data/data_source/prayers/remote/remote_ds_prayers.dart';
import 'package:test_ex1/data/dto/created_prayer/created_prayer_dto.dart';
import 'package:test_ex1/data/dto/prayer/prayer_dto.dart';
import 'package:test_ex1/data/dto/prayers_response/prayers_response_dto.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';

class PrayerRepositoryImpl implements IPrayerRepository {
  PrayerRepositoryImpl({required RemoteDSPrayers remoteDSPrayers})
    : _remoteDSPrayers = remoteDSPrayers;

  final RemoteDSPrayers _remoteDSPrayers;

  @override
  Future<List<PrayerModel>> createPrayer({
    required int columnId,
    required String title,
  }) async {
    final createdPrayer = CreatedPrayerDTO(title: title);
    final response = await _remoteDSPrayers.createPrayerByColumnId(
      columnId,
      createdPrayer,
    );
    return response.data.map((p) => p.toModel()).toList();
  }

  @override
  Future<void> deletePrayer({required int prayerId}) =>
      _remoteDSPrayers.deletePrayerById(prayerId);

  @override
  Future<PrayerModel> doPrayer({required int prayerId}) async =>
      (await _remoteDSPrayers.doPrayerById(prayerId)).toModel();
  @override
  Future<PrayerModel> getPrayerById({required int prayerId}) async =>
      (await _remoteDSPrayers.getPrayerById(prayerId)).toModel();

  @override
  Future<List<PrayerModel>> getPrayersByColumnId({
    required int columnId,
  }) async {
    final response = await _remoteDSPrayers.getPrayersByColumnId(columnId);
    return response.map((p) => p.toModel()).toList();
  }

  @override
  Future<List<PrayerModel>> getSubscribedPrayers() async {
    final response = await _remoteDSPrayers.getSubscribedPrayers();
    return response.map((p) => p.toModel()).toList();
  }

  @override
  Future<PrayerModel> subscribePrayer({required int prayerId}) async =>
      (await _remoteDSPrayers.subscribe(prayerId)).toModel();
  @override
  Future<PrayerModel> unsubscribePrayer({required int prayerId}) async =>
      (await _remoteDSPrayers.unsubscribe(prayerId)).toModel();
}
