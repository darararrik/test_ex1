import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:talker/talker.dart';
import 'package:test_ex1/data/db/app_db/db.dart';
import 'package:test_ex1/data/repositories/token_repository.dart';
import 'package:test_ex1/data/utils/interceptor.dart';
import 'package:test_ex1/domain/repositories/token_repository.dart';
import 'package:test_ex1/presentation/routing/app_routing.dart';

class AppConfig {
  const AppConfig({
    required this.apiUrl,
    required this.dio,
    required this.appDatabase,
    required this.secureStorage,
    required this.router,
    required this.talker,
    required ITokenRepository tokenRepository,
  }) : _tokenRepository = tokenRepository;

  final String apiUrl;
  final Dio dio;
  final AppDatabase appDatabase;
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
      final dio = Dio(
        BaseOptions(
          baseUrl: apiUrl,
          connectTimeout: const Duration(milliseconds: 15000),
          receiveTimeout: const Duration(milliseconds: 10000),
          headers: {"Content-Type": "application/json"},
          validateStatus: (_) => true,
        ),
      );
      final talker = Talker();

      dio.interceptors.add(
        AppInterceptor(tokenRepository: tokenRepository, talker: talker),
      );
      dio.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          logPrint: (obj) => talker.log(obj),
        ),
      );
      final appDatabase = AppDatabase();
      final appRouter = AppRouter();

      return AppConfig(
        apiUrl: apiUrl,
        dio: dio,
        appDatabase: appDatabase,
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
