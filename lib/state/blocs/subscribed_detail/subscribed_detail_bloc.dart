import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_ex1/domain/domain.dart';

part 'subscribed_detail_event.dart';
part 'subscribed_detail_state.dart';
part 'subscribed_detail_bloc.freezed.dart';

class SubscribedDetailBloc
    extends Bloc<SubscribedDetailEvent, SubscribedDetailState> {
  SubscribedDetailBloc(this._prayerRepository) : super(const _LoadingState()) {
    on<_GetPrayerByIdEvent>(_onGetTaskByIdEvent);
    on<_PrayEvent>(_onPray);
    on<_SubscribeEvent>(_onSubscribePrayer);
    on<_UnsubscribeEvent>(_onUnsubscribePrayer);
    on<_CreateCommentEvent>(_onCreateComment);
  }
  final IPrayerRepository _prayerRepository;

  Future<void> _onGetTaskByIdEvent(
    _GetPrayerByIdEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
      }
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayerId,
      );
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(SubscribedDetailState.loaded(prayer: prayer, comments: comments));
    } catch (error) {
      emit(SubscribedDetailState.error(message: error.toString()));
    }
  }

  Future<void> _onPray(
    _PrayEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
      }
      await _prayerRepository.doPrayer(prayerId: event.prayer.id);
      final prayers = await _prayerRepository.getSubscribedPrayers();
      final prayer = prayers.firstWhere((p) => p.id == event.prayer.id);
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(SubscribedDetailState.loaded(prayer: prayer, comments: comments));
    } catch (error) {
      emit(SubscribedDetailState.error(message: error.toString()));
    }
  }

  Future<void> _onSubscribePrayer(
    _SubscribeEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
      }
      await _prayerRepository.subscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(SubscribedDetailState.loaded(prayer: prayer, comments: comments));
    } catch (error) {
      emit(SubscribedDetailState.error(message: error.toString()));
    }
  }

  Future<void> _onUnsubscribePrayer(
    _UnsubscribeEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
      }
      await _prayerRepository.unsubscribePrayer(prayerId: event.prayer.id);
      final prayer = await _prayerRepository.getPrayerById(
        prayerId: event.prayer.id,
      );
      final res = await _prayerRepository.getComments(prayerId: prayer.id);
      final comments = res.commentsList;
      emit(SubscribedDetailState.loaded(prayer: prayer, comments: comments));
    } catch (error) {
      emit(SubscribedDetailState.error(message: error.toString()));
    }
  }

  FutureOr<void> _onCreateComment(
    _CreateCommentEvent event,
    Emitter<SubscribedDetailState> emit,
  ) async {
    try {
      if (state is! _LoadedState) {
        emit(const SubscribedDetailState.loading());
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
      emit(SubscribedDetailState.loaded(prayer: prayer, comments: comments));
    } catch (e) {
      emit(SubscribedDetailState.error(message: e.toString()));
    }
  }
}
