part of 'user_columns_bloc.dart';

@freezed
class UserColumnsState with _$UserColumnsState {
  const factory UserColumnsState.empty() = _EmptyState;
  const factory UserColumnsState.loading() = _LoadingState;
  const factory UserColumnsState.loaded({
    required List<ColumnModel> columns,
    required String? afterCursor,
    @Default(false) bool isLoadingMore,
    @Default(true) bool hasMore,
  }) = _LoadedState;
  const factory UserColumnsState.error({required String message}) = _ErrorState;
}
