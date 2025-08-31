part of 'my_desks_bloc.dart';

@freezed
class MyDesksState with _$MyDesksState {
  const factory MyDesksState.loading() = _LoadingState;
  const factory MyDesksState.loaded({required List<ColumnModel> columns}) =
      _LoadedState;
  const factory MyDesksState.empty() = _EmptyState;
  const factory MyDesksState.error({required String message}) = _ErrorState;
}
