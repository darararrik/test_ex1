part of 'my_desks_bloc.dart';

@freezed
class MyDesksEvent with _$MyDesksEvent {
  const factory MyDesksEvent.getMyColumns() = _GetMyColumnsEvent;
  const factory MyDesksEvent.renameColumn({
    required int id,
    required String newName,
  }) = _RenameColumnEvent;
  const factory MyDesksEvent.createColumn({required String title}) =
      _CreateColumnEvent;
  const factory MyDesksEvent.removeColumn({required int id}) =
      _DeleteColumnEvent;
}
