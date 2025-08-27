import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:test_ex1/data/db/app_db/db.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:test_ex1/presentation/my_app.dart';
import 'package:test_ex1/presentation/utils/config/app_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  final config = await AppConfig.config();
  runApp(MyApp(config: config));
}
