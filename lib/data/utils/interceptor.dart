import 'package:dio/dio.dart';
import 'package:talker/talker.dart';

import 'package:test_ex1/data/utils/extensions/request_options.dart';
import 'package:test_ex1/domain/repositories/token_repository.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    hide Options;

class AppInterceptor extends Interceptor {
  AppInterceptor({
    required this.talker,
    required ITokenRepository tokenRepository,
  }) : _tokenRepository = tokenRepository;
  final ITokenRepository _tokenRepository;
  final Talker talker;
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.requiresAuth) {
      final token = await _tokenRepository.getToken();
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
        talker.info('Auth header added: $token');
      }
    }
    talker.debug('Request: ${options.method} ${options.path}');
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    talker.error('Dio Error: ${err.message}', err);
    handler.next(err);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    talker.log('Response [${response.statusCode}]: ${response.data}');
    super.onResponse(response, handler);
  }
}
