import 'package:dio/dio.dart';

import 'package:test_ex1/data/utils/app_defaults.dart';

class RemoteService {
  RemoteService({required Dio dio}) : _dio = dio;

  final Dio _dio;

  Future<Response> fetch({
    required String path,
    required String method,
    dynamic body,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    bool needAuth = false,
  }) async {
    try {
      final options = Options(
        method: method,
        headers: headers,
        extra: needAuth ? {AppDefaults.requiresAuth: true} : null,
      );

      return await _dio.request(
        path,
        data: body,
        queryParameters: queryParameters,
        options: options,
      );
    } on DioException catch (e) {
      throw Exception('$method request failed: ${e.message}');
    }
  }
}
