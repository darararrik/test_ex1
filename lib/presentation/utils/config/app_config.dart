import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker/talker.dart';

import 'package:test_ex1/data/repositories/token_repository_impl.dart';
import 'package:test_ex1/domain/repositories/token_repository.dart';
import 'package:test_ex1/presentation/routing/app_routing.dart';
import 'package:test_ex1/presentation/utils/config/dio_config.dart';

class AppConfig {
  const AppConfig({
    required this.apiUrl,
    required this.dio,
    required this.secureStorage,
    required this.router,
    required this.talker,
    required ITokenRepository tokenRepository,
  }) : _tokenRepository = tokenRepository;

  final String apiUrl;
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  final AppRouter router;
  final Talker talker;
  final ITokenRepository _tokenRepository;

  ITokenRepository get tokenRepository => _tokenRepository;

  static Future<AppConfig> config() async {
    try {
      const secureStorage = FlutterSecureStorage();
      final tokenRepository = TokenRepositoryImpl(storage: secureStorage);
      final apiUrl = dotenv.env['API_URL'];
      if (apiUrl == null || apiUrl.isEmpty) {
        throw Exception('API_URL не найден в .env файле');
      }

      final talker = Talker();
      final dio = DioConfig(
        apiUrl: apiUrl,
        tokenRepository: tokenRepository,
        talker: talker,
      ).create();

      final appRouter = AppRouter();

      return AppConfig(
        apiUrl: apiUrl,
        dio: dio,
        secureStorage: secureStorage,
        router: appRouter,
        tokenRepository: tokenRepository,
        talker: talker,
      );
    } catch (e, st) {
      throw Exception('Ошибка инициализации конфигурации: $e\n$st');
    }
  }
}
