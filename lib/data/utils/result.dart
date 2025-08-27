import 'package:test_ex1/data/utils/auth_error.dart';

class Result<T> {


  Result.success(this.data) : error = null;
  Result.failure(this.error) : data = null;
  final T? data;
  final AuthError? error;

  bool get isSuccess => data != null;
}
