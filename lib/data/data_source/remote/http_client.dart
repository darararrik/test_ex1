import 'package:dio/dio.dart';

import 'package:test_ex1/data/data_source/remote/remote_service.dart';
import 'package:test_ex1/data/utils/transformer.dart' as tr;

class HttpClient {
  HttpClient(this._remoteService);

  final RemoteService _remoteService;

  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? query,
    Map<String, dynamic>? headers,
    bool needAuth = true,
    tr.Transformer<T>? transformer,
  }) async {
    final response = await _remoteService.fetch(
      path: path,
      method: Method.get.statusStr,
      queryParameters: query,
      headers: headers,
      needAuth: needAuth,
    );

    return _transform<T>(response, transformer);
  }

  Future<T> post<T>(
    String path, {
    dynamic body,
    Map<String, dynamic>? headers,
    bool needAuth = true,
    tr.Transformer<T>? transformer,
  }) async {
    final response = await _remoteService.fetch(
      path: path,
      method: Method.post.statusStr,
      body: body,
      headers: headers,
      needAuth: needAuth,
    );

    return _transform<T>(response, transformer);
  }

  Future<T> put<T>(
    String path, {
    dynamic body,
    Map<String, dynamic>? headers,
    bool needAuth = true,
    tr.Transformer<T>? transformer,
  }) async {
    final response = await _remoteService.fetch(
      path: path,
      method: Method.put.statusStr,
      body: body,
      headers: headers,
      needAuth: needAuth,
    );

    return _transform<T>(response, transformer);
  }

  Future<T> delete<T>(
    String path, {
    dynamic body,
    Map<String, dynamic>? headers,
    bool needAuth = true,
    tr.Transformer<T>? transformer,
  }) async {
    final response = await _remoteService.fetch(
      path: path,
      method: Method.delete.statusStr,
      body: body,
      headers: headers,
      needAuth: needAuth,
    );

    return _transform<T>(response, transformer);
  }

  T _transform<T>(Response response, tr.Transformer<T>? transformer) {
    if (transformer != null) {
      return transformer(response.data);
    }
    return response as T;
  }
}

enum Method {
  post("POST"),
  get("GET"),
  delete("DELETE"),
  put("PUT");

  const Method(this.statusStr);
  final String statusStr;
}
