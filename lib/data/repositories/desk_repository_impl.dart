import 'package:test_ex1/data/data_source/desks/remote/remote_ds_desks.dart';
import 'package:test_ex1/data/dto/desk/desk_dto.dart';
import 'package:test_ex1/data/dto/desks_response/desks_response_dto.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';

class DeskRepositoryImpl implements IDeskRepository {
  DeskRepositoryImpl({required RemoteDSDesks remoteDSDesks})
    : _remoteDSDesks = remoteDSDesks;

  final RemoteDSDesks _remoteDSDesks;
  @override
  Future<DeskModel> getMyDesk() async =>
      (await _remoteDSDesks.getMyDesk()).toModel();

  @override
  Future<List<DeskModel>> getOtherDesks({int limit = 10}) async {
    final response = await _remoteDSDesks.geOthertDesks(limit);
    return response.data.map((d) => d.toModel()).toList();
  }
}
