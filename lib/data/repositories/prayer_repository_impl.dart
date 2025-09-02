import 'package:test_ex1/data/data_source/prayers/remote/remote_ds_prayers.dart';
import 'package:test_ex1/data/dto/created_prayer/created_prayer_dto.dart';
import 'package:test_ex1/data/dto/prayer/prayer_dto.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';

class PrayerRepositoryImpl implements IPrayerRepository {
  PrayerRepositoryImpl({required RemoteDSPrayers remoteDSPrayers})
    : _remoteDSPrayers = remoteDSPrayers;

  final RemoteDSPrayers _remoteDSPrayers;

  @override
  Future<void> createPrayer({
    required int columnId,
    required String title,
  }) async {
    final createdPrayer = CreatedPrayerDTO(title: title);
    final res = await _remoteDSPrayers.createPrayerByColumnId(
      columnId,
      createdPrayer,
    );
    final statusCode = res.response.statusCode;
    final data = res.data;
    if (statusCode == 200 || statusCode == 201) {
      return;
    } else if (statusCode == 400) {
      final errorMsg =
          (data is Map<String, dynamic> ? data['message'] : null) ??
          'Unknown error';
      throw Exception(errorMsg);
    } else {
      throw Exception('Unexpected status code: $statusCode');
    }
  }

  @override
  Future<void> deletePrayer({required int prayerId}) =>
      _remoteDSPrayers.deletePrayerById(prayerId);

  @override
  Future<PrayerModel> doPrayer({required int prayerId}) async {
    final res = await _remoteDSPrayers.doPrayerById(prayerId);

    final statusCode = res.response.statusCode;
    final data = res.data;

    if (statusCode == 200 || statusCode == 201) {
      final prayerDTO = PrayerDTO.fromJson(data);
      return prayerDTO.toModel();
    } else if (statusCode == 400) {
      final errorMsg =
          (data is Map<String, dynamic> ? data['message'] : null) ??
          'Unknown error';
      throw Exception(errorMsg);
    } else {
      throw Exception('Unexpected status code: $statusCode');
    }
  }

  @override
  Future<PrayerModel> getPrayerById({required int prayerId}) async {
    final dto = await _remoteDSPrayers.getPrayerById(prayerId);
    final subs = await _remoteDSPrayers.getSubscribedPrayers();
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
    final response = await _remoteDSPrayers.getPrayersByColumnId(columnId);
    return response.map((p) => p.toModel()).toList();
  }

  @override
  Future<List<PrayerModel>> getSubscribedPrayers() async {
    final response = await _remoteDSPrayers.getSubscribedPrayers();
    return response.map((p) => p.toModel(isSub: true)).toList();
  }

  @override
  Future<void> subscribePrayer({required int prayerId}) async {
    final res = await _remoteDSPrayers.subscribe(prayerId);
    final statusCode = res.response.statusCode;
    final data = res.data;
    if (statusCode == 200 || statusCode == 201) {
      return;
    } else if (statusCode == 400) {
      final errorMsg =
          (data is Map<String, dynamic> ? data['message'] : null) ??
          'Unknown error';
      throw Exception(errorMsg);
    } else {
      throw Exception('Unexpected status code: $statusCode');
    }
  }

  @override
  Future<void> unsubscribePrayer({required int prayerId}) async {
    final res = await _remoteDSPrayers.unsubscribe(prayerId);
    final statusCode = res.response.statusCode;
    final data = res.data;
    if (statusCode == 200 || statusCode == 201) {
      return;
    } else if (statusCode == 400) {
      final errorMsg =
          (data is Map<String, dynamic> ? data['message'] : null) ??
          'Unknown error';
      throw Exception(errorMsg);
    } else {
      throw Exception('Unexpected status code: $statusCode');
    }
  }
}
