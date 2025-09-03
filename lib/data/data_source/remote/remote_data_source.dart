import 'package:dio/dio.dart';
import 'package:test_ex1/data/data_source/remote/http_client.dart';
import 'package:test_ex1/data/dto/dto.dart';
import 'package:test_ex1/data/utils/rest_constants.dart';
import 'package:test_ex1/data/utils/transformer.dart';

typedef Transformer<T> = T Function(dynamic data);

class RemoteDataSource {
  const RemoteDataSource(this.client);
  final HttpClient client;

  // ================= AUTH =================

  Future<Response> signIn(LoginRequestDto dto) {
    return client.post<Response>(
      RestConstants.authSignIn,
      body: dto.toJson(),
      needAuth: false,
    );
  }

  Future<Response> signUp(RegisterRequestDto dto) {
    return client.post<Response>(
      RestConstants.authSignUp,
      body: dto.toJson(),
      needAuth: false,
    );
  }

  // ================= DESKS =================

  Future<ColumnsResponseDTO> getColumnsByDeskId(int deskId, int limit) {
    return client.get<ColumnsResponseDTO>(
      RestConstants.deskColumns(deskId),
      query: {"limit": limit},
      transformer: (data) =>
          fromJsonTransformer(ColumnsResponseDTO.fromJson, data),
    );
  }

  Future<DesksResponseDTO> getDesks(int limit, {String? afterCursor}) {
    return client.get<DesksResponseDTO>(
      RestConstants.desks,
      query: {"limit": limit, "afterCursor": afterCursor},
      transformer: (data) =>
          fromJsonTransformer(DesksResponseDTO.fromJson, data),
    );
  }

  Future<DeskDTO> getMyDesk() {
    return client.get<DeskDTO>(
      RestConstants.myDesks,
      transformer: (data) => fromJsonTransformer(DeskDTO.fromJson, data),
    );
  }

  // ================= COLUMNS =================

  Future<ColumnDTO> getColumnById(int columnId) {
    return client.get<ColumnDTO>(
      RestConstants.columnById(columnId),
      transformer: (data) => fromJsonTransformer(ColumnDTO.fromJson, data),
    );
  }

  Future<void> deleteColumn(int columnId) =>
      client.delete<void>(RestConstants.columnById(columnId));

  Future<ColumnDTO> createColumn(CreatedColumnDTO dto) {
    return client.post<ColumnDTO>(
      RestConstants.columns,
      body: dto.toJson(),
      transformer: (data) => fromJsonTransformer(ColumnDTO.fromJson, data),
    );
  }

  // ================= PRAYERS =================

  Future<List<PrayerDTO>> getPrayersByColumnId(int columnId) {
    return client.get<List<PrayerDTO>>(
      RestConstants.columnPrayers(columnId),
      transformer: (data) => fromJsonListTransformer(PrayerDTO.fromJson, data),
    );
  }

  Future<Response> createPrayer(int columnId, CreatedPrayerDTO dto) {
    return client.post<Response>(
      RestConstants.columnPrayers(columnId),
      body: dto.toJson(),
      transformer: (response) => response,
    );
  }

  Future<List<PrayerDTO>> getSubscribedPrayers() {
    return client.get<List<PrayerDTO>>(
      RestConstants.subscribedPrayers,
      transformer: (data) => fromJsonListTransformer(PrayerDTO.fromJson, data),
    );
  }

  Future<void> subscribePrayer(int prayerId) async {
    final res = await client.post<Response>(
      RestConstants.prayerSubscribe(prayerId),
    );
    _checkResponse(res);
  }

  Future<void> unsubscribePrayer(int prayerId) async {
    final res = await client.delete<Response>(
      RestConstants.prayerSubscribe(prayerId),
    );
    _checkResponse(res);
  }

  Future<PrayerDTO> doPrayer(int prayerId) async {
    final res = await client.post<Response>(RestConstants.prayerDo(prayerId));
    _checkResponse(res);
    return PrayerDTO.fromJson(res.data);
  }

  Future<PrayerDTO> getPrayerById(int prayerId) {
    return client.get<PrayerDTO>(
      RestConstants.prayerById(prayerId),
      transformer: (data) => PrayerDTO.fromJson(data),
    );
  }

  Future<void> deletePrayer(int prayerId) {
    return client.delete<void>(RestConstants.prayerById(prayerId));
  }

  // ================= COMMENTS =================

  Future<CommentDTO> createComment(int prayerId, CommentDTO dto) {
    return client.post<CommentDTO>(
      RestConstants.prayerComments(prayerId),
      body: dto.toJson(),
      transformer: (data) => fromJsonTransformer(CommentDTO.fromJson, data),
    );
  }

  Future<List<CommentDTO>> getComments(int prayerId) {
    return client.get<List<CommentDTO>>(
      RestConstants.prayerComments(prayerId),
      transformer: (data) => fromJsonListTransformer(CommentDTO.fromJson, data),
    );
  }

  void _checkResponse(Response res) {
    final status = res.statusCode ?? 0;
    if (status >= 200 && status < 300) return;

    final message =
        (res.data is Map<String, dynamic> ? res.data['message'] : null) ??
        'Unknown error';
    throw Exception('Request failed with status $status: $message');
  }
}
