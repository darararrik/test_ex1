import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/models/models.dart';
import 'package:test_ex1/domain/repositories/prayer_repository.dart';

part 'my_prayers_detail_event.dart';
part 'my_prayers_detail_state.dart';
part 'my_prayers_detail_bloc.freezed.dart';

class MyPrayersDetailBloc
    extends Bloc<MyPrayersDetailEvent, MyPrayersDetailState> {
  MyPrayersDetailBloc(this._prayerRepository) : super(const _LoadingState()) {
    on<_GetPrayerByIdEvent>(_onGetPrayer);
    on<_PrayEvent>(_onPray);
    on<_SubscribeEvent>(_onSubscribePrayer);
    on<_UnsubscribeEvent>(_onUnsubscribePrayer);
    on<_CreateCommentEvent>(_onCreateComment);
  }

  final IPrayerRepository _prayerRepository;
  FutureOr<void> _onGetPrayer(
    _GetPrayerByIdEvent event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersDetailState.loading());
      }
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayerId,
      );
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(MyPrayersDetailState.loaded(prayer: prayer, comments: comments));
    } catch (e) {
      emit(MyPrayersDetailState.error(e.toString()));
    }
  }

  FutureOr<void> _onPray(
    _PrayEvent event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersDetailState.loading());
      }
      await _prayerRepository.doPrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(MyPrayersDetailState.loaded(prayer: prayer, comments: comments));
    } catch (e) {
      emit(const MyPrayersDetailState.error("Failed to load task"));
    }
  }

  Future<void> _onSubscribePrayer(
    _SubscribeEvent event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersDetailState.loading());
      }
      await _prayerRepository.subscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(MyPrayersDetailState.loaded(prayer: prayer, comments: comments));
    } catch (error) {
      emit(MyPrayersDetailState.error(error.toString()));
    }
  }

  Future<void> _onUnsubscribePrayer(
    _UnsubscribeEvent event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersDetailState.loading());
      }
      await _prayerRepository.unsubscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(MyPrayersDetailState.loaded(prayer: prayer, comments: comments));
    } catch (error) {
      emit(MyPrayersDetailState.error(error.toString()));
    }
  }

  FutureOr<void> _onCreateComment(
    _CreateCommentEvent event,
    Emitter<MyPrayersDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const MyPrayersDetailState.loading());
      }
      await _prayerRepository.createComment(
        prayerId: event.prayerId,
        body: event.body,
      );
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayerId,
      );
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(MyPrayersDetailState.loaded(prayer: prayer, comments: comments));
    } catch (e) {
      emit(MyPrayersDetailState.error(e.toString()));
    }
  }
}
