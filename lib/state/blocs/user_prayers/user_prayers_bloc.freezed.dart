// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_prayers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserPrayersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPrayersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPrayersEvent()';
}


}

/// @nodoc
class $UserPrayersEventCopyWith<$Res>  {
$UserPrayersEventCopyWith(UserPrayersEvent _, $Res Function(UserPrayersEvent) __);
}


/// Adds pattern-matching-related methods to [UserPrayersEvent].
extension UserPrayersEventPatterns on UserPrayersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPrayersEvent value)?  getPrayersByColumnId,TResult Function( _PrayEvent value)?  pray,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPrayersEvent() when getPrayersByColumnId != null:
return getPrayersByColumnId(_that);case _PrayEvent() when pray != null:
return pray(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPrayersEvent value)  getPrayersByColumnId,required TResult Function( _PrayEvent value)  pray,}){
final _that = this;
switch (_that) {
case _GetPrayersEvent():
return getPrayersByColumnId(_that);case _PrayEvent():
return pray(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPrayersEvent value)?  getPrayersByColumnId,TResult? Function( _PrayEvent value)?  pray,}){
final _that = this;
switch (_that) {
case _GetPrayersEvent() when getPrayersByColumnId != null:
return getPrayersByColumnId(_that);case _PrayEvent() when pray != null:
return pray(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int columnId)?  getPrayersByColumnId,TResult Function( PrayerModel prayer)?  pray,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPrayersEvent() when getPrayersByColumnId != null:
return getPrayersByColumnId(_that.columnId);case _PrayEvent() when pray != null:
return pray(_that.prayer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int columnId)  getPrayersByColumnId,required TResult Function( PrayerModel prayer)  pray,}) {final _that = this;
switch (_that) {
case _GetPrayersEvent():
return getPrayersByColumnId(_that.columnId);case _PrayEvent():
return pray(_that.prayer);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int columnId)?  getPrayersByColumnId,TResult? Function( PrayerModel prayer)?  pray,}) {final _that = this;
switch (_that) {
case _GetPrayersEvent() when getPrayersByColumnId != null:
return getPrayersByColumnId(_that.columnId);case _PrayEvent() when pray != null:
return pray(_that.prayer);case _:
  return null;

}
}

}

/// @nodoc


class _GetPrayersEvent implements UserPrayersEvent {
  const _GetPrayersEvent({required this.columnId});
  

 final  int columnId;

/// Create a copy of UserPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPrayersEventCopyWith<_GetPrayersEvent> get copyWith => __$GetPrayersEventCopyWithImpl<_GetPrayersEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPrayersEvent&&(identical(other.columnId, columnId) || other.columnId == columnId));
}


@override
int get hashCode => Object.hash(runtimeType,columnId);

@override
String toString() {
  return 'UserPrayersEvent.getPrayersByColumnId(columnId: $columnId)';
}


}

/// @nodoc
abstract mixin class _$GetPrayersEventCopyWith<$Res> implements $UserPrayersEventCopyWith<$Res> {
  factory _$GetPrayersEventCopyWith(_GetPrayersEvent value, $Res Function(_GetPrayersEvent) _then) = __$GetPrayersEventCopyWithImpl;
@useResult
$Res call({
 int columnId
});




}
/// @nodoc
class __$GetPrayersEventCopyWithImpl<$Res>
    implements _$GetPrayersEventCopyWith<$Res> {
  __$GetPrayersEventCopyWithImpl(this._self, this._then);

  final _GetPrayersEvent _self;
  final $Res Function(_GetPrayersEvent) _then;

/// Create a copy of UserPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? columnId = null,}) {
  return _then(_GetPrayersEvent(
columnId: null == columnId ? _self.columnId : columnId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PrayEvent implements UserPrayersEvent {
  const _PrayEvent({required this.prayer});
  

 final  PrayerModel prayer;

/// Create a copy of UserPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayEventCopyWith<_PrayEvent> get copyWith => __$PrayEventCopyWithImpl<_PrayEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayEvent&&(identical(other.prayer, prayer) || other.prayer == prayer));
}


@override
int get hashCode => Object.hash(runtimeType,prayer);

@override
String toString() {
  return 'UserPrayersEvent.pray(prayer: $prayer)';
}


}

/// @nodoc
abstract mixin class _$PrayEventCopyWith<$Res> implements $UserPrayersEventCopyWith<$Res> {
  factory _$PrayEventCopyWith(_PrayEvent value, $Res Function(_PrayEvent) _then) = __$PrayEventCopyWithImpl;
@useResult
$Res call({
 PrayerModel prayer
});




}
/// @nodoc
class __$PrayEventCopyWithImpl<$Res>
    implements _$PrayEventCopyWith<$Res> {
  __$PrayEventCopyWithImpl(this._self, this._then);

  final _PrayEvent _self;
  final $Res Function(_PrayEvent) _then;

/// Create a copy of UserPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,}) {
  return _then(_PrayEvent(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,
  ));
}


}

/// @nodoc
mixin _$UserPrayersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserPrayersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPrayersState()';
}


}

/// @nodoc
class $UserPrayersStateCopyWith<$Res>  {
$UserPrayersStateCopyWith(UserPrayersState _, $Res Function(UserPrayersState) __);
}


/// Adds pattern-matching-related methods to [UserPrayersState].
extension UserPrayersStatePatterns on UserPrayersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Empty value)?  empty,TResult Function( _LoadingState value)?  loading,TResult Function( _LoadedState value)?  loaded,TResult Function( _ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Empty() when empty != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Empty value)  empty,required TResult Function( _LoadingState value)  loading,required TResult Function( _LoadedState value)  loaded,required TResult Function( _ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _Empty():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Empty value)?  empty,TResult? Function( _LoadingState value)?  loading,TResult? Function( _LoadedState value)?  loaded,TResult? Function( _ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _Empty() when empty != null:
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
case _Empty() when empty != null:
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
case _Empty():
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
case _Empty() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.prayers);case _ErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Empty implements UserPrayersState {
  const _Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPrayersState.empty()';
}


}




/// @nodoc


class _LoadingState implements UserPrayersState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserPrayersState.loading()';
}


}




/// @nodoc


class _LoadedState implements UserPrayersState {
  const _LoadedState({required final  List<PrayerModel> prayers}): _prayers = prayers;
  

 final  List<PrayerModel> _prayers;
 List<PrayerModel> get prayers {
  if (_prayers is EqualUnmodifiableListView) return _prayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prayers);
}


/// Create a copy of UserPrayersState
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
  return 'UserPrayersState.loaded(prayers: $prayers)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $UserPrayersStateCopyWith<$Res> {
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

/// Create a copy of UserPrayersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayers = null,}) {
  return _then(_LoadedState(
prayers: null == prayers ? _self._prayers : prayers // ignore: cast_nullable_to_non_nullable
as List<PrayerModel>,
  ));
}


}

/// @nodoc


class _ErrorState implements UserPrayersState {
  const _ErrorState({required this.message});
  

 final  String message;

/// Create a copy of UserPrayersState
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
  return 'UserPrayersState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $UserPrayersStateCopyWith<$Res> {
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

/// Create a copy of UserPrayersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
