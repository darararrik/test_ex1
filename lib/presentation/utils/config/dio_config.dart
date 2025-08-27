import 'package:dio/dio.dart';
import 'package:talker/talker.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';
import 'package:talker_dio_logger/talker_dio_logger_settings.dart';

import 'package:test_ex1/data/utils/interceptor.dart';
import 'package:test_ex1/domain/repositories/token_repository.dart';

class DioConfig {
  DioConfig({
    required this.apiUrl,
    required this.tokenRepository,
    required this.talker,
  });

  final String apiUrl;
  final ITokenRepository tokenRepository;
  final Talker talker;

  Dio create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: apiUrl,
        connectTimeout: const Duration(milliseconds: 15000),
        receiveTimeout: const Duration(milliseconds: 10000),
        headers: {"Content-Type": "application/json"},
      ),
    );

    dio.interceptors.addAll([
      AppInterceptor(tokenRepository: tokenRepository, talker: talker),
      TalkerDioLogger(
        talker: talker,
        settings: TalkerDioLoggerSettings(
          printRequestHeaders: true,
          printRequestData: true,
          printResponseData: true,
          printResponseHeaders: false,
          printErrorData: true,
          printErrorHeaders: false,
          requestPen: AnsiPen()..blue(),
          responsePen: AnsiPen()..green(),
          errorPen: AnsiPen()..red(),
        ),
      ),
    ]);

    return dio;
  }
}
