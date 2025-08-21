part of 'my_desks_bloc.dart';

@freezed
class MyDesksEvent with _$MyDesksEvent {
  const factory MyDesksEvent.getMyDesks() = _GetMyDesksEvent;
  const factory MyDesksEvent.renameDesk(int id, String newName) =
      _RenameDeskEvent;
  const factory MyDesksEvent.createDesk(String title) = _CreateDeskEvent;
  const factory MyDesksEvent.removeDesk(int id) = _RemoveDeskEvent;
}
