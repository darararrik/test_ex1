// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscribed_prayer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubscribedPrayerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscribedPrayerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscribedPrayerState()';
}


}

/// @nodoc
class $SubscribedPrayerStateCopyWith<$Res>  {
$SubscribedPrayerStateCopyWith(SubscribedPrayerState _, $Res Function(SubscribedPrayerState) __);
}


/// Adds pattern-matching-related methods to [SubscribedPrayerState].
extension SubscribedPrayerStatePatterns on SubscribedPrayerState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EmptyState value)?  empty,TResult Function( _LoadingState value)?  loading,TResult Function( _LoadedState value)?  loaded,TResult Function( _ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty(_that);case _LoadingState() when loading != null:
return loading(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _ErrorState() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EmptyState value)  empty,required TResult Function( _LoadingState value)  loading,required TResult Function( _LoadedState value)  loaded,required TResult Function( _ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _EmptyState():
return empty(_that);case _LoadingState():
return loading(_that);case _LoadedState():
return loaded(_that);case _ErrorState():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EmptyState value)?  empty,TResult? Function( _LoadingState value)?  loading,TResult? Function( _LoadedState value)?  loaded,TResult? Function( _ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty(_that);case _LoadingState() when loading != null:
return loading(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _ErrorState() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function()?  loading,TResult Function( List<PrayerModel> prayers)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.prayers);case _ErrorState() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function()  loading,required TResult Function( List<PrayerModel> prayers)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _EmptyState():
return empty();case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.prayers);case _ErrorState():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function()?  loading,TResult? Function( List<PrayerModel> prayers)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.prayers);case _ErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _EmptyState implements SubscribedPrayerState {
  const _EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscribedPrayerState.empty()';
}


}




/// @nodoc


class _LoadingState implements SubscribedPrayerState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscribedPrayerState.loading()';
}


}




/// @nodoc


class _LoadedState implements SubscribedPrayerState {
  const _LoadedState({required final  List<PrayerModel> prayers}): _prayers = prayers;
  

 final  List<PrayerModel> _prayers;
 List<PrayerModel> get prayers {
  if (_prayers is EqualUnmodifiableListView) return _prayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prayers);
}


/// Create a copy of SubscribedPrayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedStateCopyWith<_LoadedState> get copyWith => __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedState&&const DeepCollectionEquality().equals(other._prayers, _prayers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_prayers));

@override
String toString() {
  return 'SubscribedPrayerState.loaded(prayers: $prayers)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $SubscribedPrayerStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 List<PrayerModel> prayers
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of SubscribedPrayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayers = null,}) {
  return _then(_LoadedState(
prayers: null == prayers ? _self._prayers : prayers // ignore: cast_nullable_to_non_nullable
as List<PrayerModel>,
  ));
}


}

/// @nodoc


class _ErrorState implements SubscribedPrayerState {
  const _ErrorState({required this.message});
  

 final  String message;

/// Create a copy of SubscribedPrayerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorStateCopyWith<_ErrorState> get copyWith => __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SubscribedPrayerState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $SubscribedPrayerStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(_ErrorState value, $Res Function(_ErrorState) _then) = __$ErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(this._self, this._then);

  final _ErrorState _self;
  final $Res Function(_ErrorState) _then;

/// Create a copy of SubscribedPrayerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$SubscribedPrayerEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscribedPrayerEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscribedPrayerEvent()';
}


}

/// @nodoc
class $SubscribedPrayerEventCopyWith<$Res>  {
$SubscribedPrayerEventCopyWith(SubscribedPrayerEvent _, $Res Function(SubscribedPrayerEvent) __);
}


/// Adds pattern-matching-related methods to [SubscribedPrayerEvent].
extension SubscribedPrayerEventPatterns on SubscribedPrayerEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetFollowedTasksEvent value)?  getSubs,TResult Function( _PrayFollowedTasksEvent value)?  pray,TResult Function( _SubscribeEvent value)?  subscribe,TResult Function( _UnsubscribeEvent value)?  unsubscribe,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFollowedTasksEvent() when getSubs != null:
return getSubs(_that);case _PrayFollowedTasksEvent() when pray != null:
return pray(_that);case _SubscribeEvent() when subscribe != null:
return subscribe(_that);case _UnsubscribeEvent() when unsubscribe != null:
return unsubscribe(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetFollowedTasksEvent value)  getSubs,required TResult Function( _PrayFollowedTasksEvent value)  pray,required TResult Function( _SubscribeEvent value)  subscribe,required TResult Function( _UnsubscribeEvent value)  unsubscribe,}){
final _that = this;
switch (_that) {
case _GetFollowedTasksEvent():
return getSubs(_that);case _PrayFollowedTasksEvent():
return pray(_that);case _SubscribeEvent():
return subscribe(_that);case _UnsubscribeEvent():
return unsubscribe(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetFollowedTasksEvent value)?  getSubs,TResult? Function( _PrayFollowedTasksEvent value)?  pray,TResult? Function( _SubscribeEvent value)?  subscribe,TResult? Function( _UnsubscribeEvent value)?  unsubscribe,}){
final _that = this;
switch (_that) {
case _GetFollowedTasksEvent() when getSubs != null:
return getSubs(_that);case _PrayFollowedTasksEvent() when pray != null:
return pray(_that);case _SubscribeEvent() when subscribe != null:
return subscribe(_that);case _UnsubscribeEvent() when unsubscribe != null:
return unsubscribe(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getSubs,TResult Function( PrayerModel prayer)?  pray,TResult Function( PrayerModel prayer)?  subscribe,TResult Function( PrayerModel prayer)?  unsubscribe,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFollowedTasksEvent() when getSubs != null:
return getSubs();case _PrayFollowedTasksEvent() when pray != null:
return pray(_that.prayer);case _SubscribeEvent() when subscribe != null:
return subscribe(_that.prayer);case _UnsubscribeEvent() when unsubscribe != null:
return unsubscribe(_that.prayer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getSubs,required TResult Function( PrayerModel prayer)  pray,required TResult Function( PrayerModel prayer)  subscribe,required TResult Function( PrayerModel prayer)  unsubscribe,}) {final _that = this;
switch (_that) {
case _GetFollowedTasksEvent():
return getSubs();case _PrayFollowedTasksEvent():
return pray(_that.prayer);case _SubscribeEvent():
return subscribe(_that.prayer);case _UnsubscribeEvent():
return unsubscribe(_that.prayer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getSubs,TResult? Function( PrayerModel prayer)?  pray,TResult? Function( PrayerModel prayer)?  subscribe,TResult? Function( PrayerModel prayer)?  unsubscribe,}) {final _that = this;
switch (_that) {
case _GetFollowedTasksEvent() when getSubs != null:
return getSubs();case _PrayFollowedTasksEvent() when pray != null:
return pray(_that.prayer);case _SubscribeEvent() when subscribe != null:
return subscribe(_that.prayer);case _UnsubscribeEvent() when unsubscribe != null:
return unsubscribe(_that.prayer);case _:
  return null;

}
}

}

/// @nodoc


class _GetFollowedTasksEvent implements SubscribedPrayerEvent {
  const _GetFollowedTasksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFollowedTasksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscribedPrayerEvent.getSubs()';
}


}




/// @nodoc


class _PrayFollowedTasksEvent implements SubscribedPrayerEvent {
  const _PrayFollowedTasksEvent({required this.prayer});
  

 final  PrayerModel prayer;

/// Create a copy of SubscribedPrayerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayFollowedTasksEventCopyWith<_PrayFollowedTasksEvent> get copyWith => __$PrayFollowedTasksEventCopyWithImpl<_PrayFollowedTasksEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayFollowedTasksEvent&&(identical(other.prayer, prayer) || other.prayer == prayer));
}


@override
int get hashCode => Object.hash(runtimeType,prayer);

@override
String toString() {
  return 'SubscribedPrayerEvent.pray(prayer: $prayer)';
}


}

/// @nodoc
abstract mixin class _$PrayFollowedTasksEventCopyWith<$Res> implements $SubscribedPrayerEventCopyWith<$Res> {
  factory _$PrayFollowedTasksEventCopyWith(_PrayFollowedTasksEvent value, $Res Function(_PrayFollowedTasksEvent) _then) = __$PrayFollowedTasksEventCopyWithImpl;
@useResult
$Res call({
 PrayerModel prayer
});




}
/// @nodoc
class __$PrayFollowedTasksEventCopyWithImpl<$Res>
    implements _$PrayFollowedTasksEventCopyWith<$Res> {
  __$PrayFollowedTasksEventCopyWithImpl(this._self, this._then);

  final _PrayFollowedTasksEvent _self;
  final $Res Function(_PrayFollowedTasksEvent) _then;

/// Create a copy of SubscribedPrayerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,}) {
  return _then(_PrayFollowedTasksEvent(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,
  ));
}


}

/// @nodoc


class _SubscribeEvent implements SubscribedPrayerEvent {
  const _SubscribeEvent({required this.prayer});
  

 final  PrayerModel prayer;

/// Create a copy of SubscribedPrayerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscribeEventCopyWith<_SubscribeEvent> get copyWith => __$SubscribeEventCopyWithImpl<_SubscribeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscribeEvent&&(identical(other.prayer, prayer) || other.prayer == prayer));
}


@override
int get hashCode => Object.hash(runtimeType,prayer);

@override
String toString() {
  return 'SubscribedPrayerEvent.subscribe(prayer: $prayer)';
}


}

/// @nodoc
abstract mixin class _$SubscribeEventCopyWith<$Res> implements $SubscribedPrayerEventCopyWith<$Res> {
  factory _$SubscribeEventCopyWith(_SubscribeEvent value, $Res Function(_SubscribeEvent) _then) = __$SubscribeEventCopyWithImpl;
@useResult
$Res call({
 PrayerModel prayer
});




}
/// @nodoc
class __$SubscribeEventCopyWithImpl<$Res>
    implements _$SubscribeEventCopyWith<$Res> {
  __$SubscribeEventCopyWithImpl(this._self, this._then);

  final _SubscribeEvent _self;
  final $Res Function(_SubscribeEvent) _then;

/// Create a copy of SubscribedPrayerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,}) {
  return _then(_SubscribeEvent(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,
  ));
}


}

/// @nodoc


class _UnsubscribeEvent implements SubscribedPrayerEvent {
  const _UnsubscribeEvent({required this.prayer});
  

 final  PrayerModel prayer;

/// Create a copy of SubscribedPrayerEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnsubscribeEventCopyWith<_UnsubscribeEvent> get copyWith => __$UnsubscribeEventCopyWithImpl<_UnsubscribeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnsubscribeEvent&&(identical(other.prayer, prayer) || other.prayer == prayer));
}


@override
int get hashCode => Object.hash(runtimeType,prayer);

@override
String toString() {
  return 'SubscribedPrayerEvent.unsubscribe(prayer: $prayer)';
}


}

/// @nodoc
abstract mixin class _$UnsubscribeEventCopyWith<$Res> implements $SubscribedPrayerEventCopyWith<$Res> {
  factory _$UnsubscribeEventCopyWith(_UnsubscribeEvent value, $Res Function(_UnsubscribeEvent) _then) = __$UnsubscribeEventCopyWithImpl;
@useResult
$Res call({
 PrayerModel prayer
});




}
/// @nodoc
class __$UnsubscribeEventCopyWithImpl<$Res>
    implements _$UnsubscribeEventCopyWith<$Res> {
  __$UnsubscribeEventCopyWithImpl(this._self, this._then);

  final _UnsubscribeEvent _self;
  final $Res Function(_UnsubscribeEvent) _then;

/// Create a copy of SubscribedPrayerEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,}) {
  return _then(_UnsubscribeEvent(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,
  ));
}


}

// dart format on
