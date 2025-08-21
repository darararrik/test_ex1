import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/models/desk/desk_model.dart';

part 'users_desks_model.freezed.dart';

@freezed
sealed class UsersDesksModel with _$UsersDesksModel {
  const factory UsersDesksModel({
    required int id,
    required int userId,
    required String title,
    required List<DeskModel> desks,
  }) = _UsersDesksModel;
  factory UsersDesksModel.createDeskUser(int id, int userId, String title) =>
      UsersDesksModel(id: id, userId: userId, title: title, desks: []);
}
