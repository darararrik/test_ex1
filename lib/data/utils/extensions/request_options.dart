import 'package:dio/dio.dart';

extension DioAuthExtension on RequestOptions {
  bool get requiresAuth => extra['requiresAuth'] == true;
}
