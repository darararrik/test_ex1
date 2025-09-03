import 'package:test_ex1/data/data_source/remote/remote_data_source.dart';
import 'package:test_ex1/data/dto/desk/desk_dto.dart';
import 'package:test_ex1/data/dto/desks_response/desks_response_dto.dart';
import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/repositories.dart';

class DeskRepositoryImpl implements IDeskRepository {
  DeskRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;
  final RemoteDataSource _remoteDataSource;

  @override
  Future<DeskModel> getMyDesk() async =>
      (await _remoteDataSource.getMyDesk()).toModel();

  @override
  Future<DesksResponseModel> getOtherDesks({
    int limit = 10,
    String? afterCursor,
  }) async {
    final DesksResponseDTO responseDto = await _remoteDataSource.getDesks(
      limit,
      afterCursor: afterCursor
    );
    return responseDto.toModel();
  }
}
