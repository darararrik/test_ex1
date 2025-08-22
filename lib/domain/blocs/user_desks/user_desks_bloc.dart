import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'user_desks_event.dart';
part 'user_desks_state.dart';
part 'user_desks_bloc.freezed.dart';

class UserDesksBloc extends Bloc<UserDesksEvent, UserDesksState> {
  UserDesksBloc(this._usersDesksRepository) : super(const _LoadingState()) {
    on<UserDesksEvent>(
      (event, emit) async => event.map(
        getDesksByUserId: (_GetDesksByUserIdEvent e) async {
          try {
            emit(const _LoadingState());
            final desks = await _usersDesksRepository.getDesksByUserId(
              e.userId,
            );
            if (desks.isEmpty) {
              emit(const _EmptyState());
              return;
            }
            emit(_LoadedState(desks));
          } catch (e) {
            emit(_ErrorState(e.toString()));
          }
          return null;
        },
      ),
    );
  }
  final IUsersDesksRepository _usersDesksRepository;
}
