typedef Transformer<T> = T Function(dynamic data);
T fromJsonTransformer<T>(
  T Function(Map<String, dynamic>) fromJson,
  dynamic data,
) {
  return fromJson(data as Map<String, dynamic>);
}

List<T> fromJsonListTransformer<T>(
  T Function(Map<String, dynamic>) fromJson,
  dynamic data,
) {
  final list = data as List<dynamic>;
  return list.map((e) => fromJson(e as Map<String, dynamic>)).toList();
}
