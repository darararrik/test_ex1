import 'package:test_ex1/data/dto/desks/desks_dto.dart';
import 'package:test_ex1/data/dto/desks_response/desks_response_dto.dart';

abstract interface class IDeskRepository {
  Future<DesksDTO> getMyDesk();
  Future<List<DesksDTO>> getOtherDesks({int limit = 10});
}
