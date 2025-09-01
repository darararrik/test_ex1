// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_prayers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyPrayersEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPrayersEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPrayersEvent()';
}


}

/// @nodoc
class $MyPrayersEventCopyWith<$Res>  {
$MyPrayersEventCopyWith(MyPrayersEvent _, $Res Function(MyPrayersEvent) __);
}


/// Adds pattern-matching-related methods to [MyPrayersEvent].
extension MyPrayersEventPatterns on MyPrayersEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetMyPrayersByDeskIdEvent value)?  getMyPrayersByDeskId,TResult Function( _RenamePrayerEvent value)?  renamePrayer,TResult Function( _CreatePrayerEvent value)?  createPrayer,TResult Function( _DeletePrayerEvent value)?  deletePray,TResult Function( _PrayEvent value)?  pray,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyPrayersByDeskIdEvent() when getMyPrayersByDeskId != null:
return getMyPrayersByDeskId(_that);case _RenamePrayerEvent() when renamePrayer != null:
return renamePrayer(_that);case _CreatePrayerEvent() when createPrayer != null:
return createPrayer(_that);case _DeletePrayerEvent() when deletePray != null:
return deletePray(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetMyPrayersByDeskIdEvent value)  getMyPrayersByDeskId,required TResult Function( _RenamePrayerEvent value)  renamePrayer,required TResult Function( _CreatePrayerEvent value)  createPrayer,required TResult Function( _DeletePrayerEvent value)  deletePray,required TResult Function( _PrayEvent value)  pray,}){
final _that = this;
switch (_that) {
case _GetMyPrayersByDeskIdEvent():
return getMyPrayersByDeskId(_that);case _RenamePrayerEvent():
return renamePrayer(_that);case _CreatePrayerEvent():
return createPrayer(_that);case _DeletePrayerEvent():
return deletePray(_that);case _PrayEvent():
return pray(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetMyPrayersByDeskIdEvent value)?  getMyPrayersByDeskId,TResult? Function( _RenamePrayerEvent value)?  renamePrayer,TResult? Function( _CreatePrayerEvent value)?  createPrayer,TResult? Function( _DeletePrayerEvent value)?  deletePray,TResult? Function( _PrayEvent value)?  pray,}){
final _that = this;
switch (_that) {
case _GetMyPrayersByDeskIdEvent() when getMyPrayersByDeskId != null:
return getMyPrayersByDeskId(_that);case _RenamePrayerEvent() when renamePrayer != null:
return renamePrayer(_that);case _CreatePrayerEvent() when createPrayer != null:
return createPrayer(_that);case _DeletePrayerEvent() when deletePray != null:
return deletePray(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int columnId)?  getMyPrayersByDeskId,TResult Function( int taskId,  int deskId,  String newTitle)?  renamePrayer,TResult Function( String title,  int columnId)?  createPrayer,TResult Function( int prayerId,  int columnId)?  deletePray,TResult Function( PrayerModel prayer)?  pray,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMyPrayersByDeskIdEvent() when getMyPrayersByDeskId != null:
return getMyPrayersByDeskId(_that.columnId);case _RenamePrayerEvent() when renamePrayer != null:
return renamePrayer(_that.taskId,_that.deskId,_that.newTitle);case _CreatePrayerEvent() when createPrayer != null:
return createPrayer(_that.title,_that.columnId);case _DeletePrayerEvent() when deletePray != null:
return deletePray(_that.prayerId,_that.columnId);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int columnId)  getMyPrayersByDeskId,required TResult Function( int taskId,  int deskId,  String newTitle)  renamePrayer,required TResult Function( String title,  int columnId)  createPrayer,required TResult Function( int prayerId,  int columnId)  deletePray,required TResult Function( PrayerModel prayer)  pray,}) {final _that = this;
switch (_that) {
case _GetMyPrayersByDeskIdEvent():
return getMyPrayersByDeskId(_that.columnId);case _RenamePrayerEvent():
return renamePrayer(_that.taskId,_that.deskId,_that.newTitle);case _CreatePrayerEvent():
return createPrayer(_that.title,_that.columnId);case _DeletePrayerEvent():
return deletePray(_that.prayerId,_that.columnId);case _PrayEvent():
return pray(_that.prayer);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int columnId)?  getMyPrayersByDeskId,TResult? Function( int taskId,  int deskId,  String newTitle)?  renamePrayer,TResult? Function( String title,  int columnId)?  createPrayer,TResult? Function( int prayerId,  int columnId)?  deletePray,TResult? Function( PrayerModel prayer)?  pray,}) {final _that = this;
switch (_that) {
case _GetMyPrayersByDeskIdEvent() when getMyPrayersByDeskId != null:
return getMyPrayersByDeskId(_that.columnId);case _RenamePrayerEvent() when renamePrayer != null:
return renamePrayer(_that.taskId,_that.deskId,_that.newTitle);case _CreatePrayerEvent() when createPrayer != null:
return createPrayer(_that.title,_that.columnId);case _DeletePrayerEvent() when deletePray != null:
return deletePray(_that.prayerId,_that.columnId);case _PrayEvent() when pray != null:
return pray(_that.prayer);case _:
  return null;

}
}

}

/// @nodoc


class _GetMyPrayersByDeskIdEvent implements MyPrayersEvent {
  const _GetMyPrayersByDeskIdEvent({required this.columnId});
  

 final  int columnId;

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetMyPrayersByDeskIdEventCopyWith<_GetMyPrayersByDeskIdEvent> get copyWith => __$GetMyPrayersByDeskIdEventCopyWithImpl<_GetMyPrayersByDeskIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyPrayersByDeskIdEvent&&(identical(other.columnId, columnId) || other.columnId == columnId));
}


@override
int get hashCode => Object.hash(runtimeType,columnId);

@override
String toString() {
  return 'MyPrayersEvent.getMyPrayersByDeskId(columnId: $columnId)';
}


}

/// @nodoc
abstract mixin class _$GetMyPrayersByDeskIdEventCopyWith<$Res> implements $MyPrayersEventCopyWith<$Res> {
  factory _$GetMyPrayersByDeskIdEventCopyWith(_GetMyPrayersByDeskIdEvent value, $Res Function(_GetMyPrayersByDeskIdEvent) _then) = __$GetMyPrayersByDeskIdEventCopyWithImpl;
@useResult
$Res call({
 int columnId
});




}
/// @nodoc
class __$GetMyPrayersByDeskIdEventCopyWithImpl<$Res>
    implements _$GetMyPrayersByDeskIdEventCopyWith<$Res> {
  __$GetMyPrayersByDeskIdEventCopyWithImpl(this._self, this._then);

  final _GetMyPrayersByDeskIdEvent _self;
  final $Res Function(_GetMyPrayersByDeskIdEvent) _then;

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? columnId = null,}) {
  return _then(_GetMyPrayersByDeskIdEvent(
columnId: null == columnId ? _self.columnId : columnId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RenamePrayerEvent implements MyPrayersEvent {
  const _RenamePrayerEvent({required this.taskId, required this.deskId, required this.newTitle});
  

 final  int taskId;
 final  int deskId;
 final  String newTitle;

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RenamePrayerEventCopyWith<_RenamePrayerEvent> get copyWith => __$RenamePrayerEventCopyWithImpl<_RenamePrayerEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RenamePrayerEvent&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.deskId, deskId) || other.deskId == deskId)&&(identical(other.newTitle, newTitle) || other.newTitle == newTitle));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,deskId,newTitle);

@override
String toString() {
  return 'MyPrayersEvent.renamePrayer(taskId: $taskId, deskId: $deskId, newTitle: $newTitle)';
}


}

/// @nodoc
abstract mixin class _$RenamePrayerEventCopyWith<$Res> implements $MyPrayersEventCopyWith<$Res> {
  factory _$RenamePrayerEventCopyWith(_RenamePrayerEvent value, $Res Function(_RenamePrayerEvent) _then) = __$RenamePrayerEventCopyWithImpl;
@useResult
$Res call({
 int taskId, int deskId, String newTitle
});




}
/// @nodoc
class __$RenamePrayerEventCopyWithImpl<$Res>
    implements _$RenamePrayerEventCopyWith<$Res> {
  __$RenamePrayerEventCopyWithImpl(this._self, this._then);

  final _RenamePrayerEvent _self;
  final $Res Function(_RenamePrayerEvent) _then;

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,Object? deskId = null,Object? newTitle = null,}) {
  return _then(_RenamePrayerEvent(
taskId: null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as int,deskId: null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,newTitle: null == newTitle ? _self.newTitle : newTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreatePrayerEvent implements MyPrayersEvent {
  const _CreatePrayerEvent({required this.title, required this.columnId});
  

 final  String title;
 final  int columnId;

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatePrayerEventCopyWith<_CreatePrayerEvent> get copyWith => __$CreatePrayerEventCopyWithImpl<_CreatePrayerEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatePrayerEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.columnId, columnId) || other.columnId == columnId));
}


@override
int get hashCode => Object.hash(runtimeType,title,columnId);

@override
String toString() {
  return 'MyPrayersEvent.createPrayer(title: $title, columnId: $columnId)';
}


}

/// @nodoc
abstract mixin class _$CreatePrayerEventCopyWith<$Res> implements $MyPrayersEventCopyWith<$Res> {
  factory _$CreatePrayerEventCopyWith(_CreatePrayerEvent value, $Res Function(_CreatePrayerEvent) _then) = __$CreatePrayerEventCopyWithImpl;
@useResult
$Res call({
 String title, int columnId
});




}
/// @nodoc
class __$CreatePrayerEventCopyWithImpl<$Res>
    implements _$CreatePrayerEventCopyWith<$Res> {
  __$CreatePrayerEventCopyWithImpl(this._self, this._then);

  final _CreatePrayerEvent _self;
  final $Res Function(_CreatePrayerEvent) _then;

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? columnId = null,}) {
  return _then(_CreatePrayerEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,columnId: null == columnId ? _self.columnId : columnId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _DeletePrayerEvent implements MyPrayersEvent {
  const _DeletePrayerEvent({required this.prayerId, required this.columnId});
  

 final  int prayerId;
 final  int columnId;

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeletePrayerEventCopyWith<_DeletePrayerEvent> get copyWith => __$DeletePrayerEventCopyWithImpl<_DeletePrayerEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeletePrayerEvent&&(identical(other.prayerId, prayerId) || other.prayerId == prayerId)&&(identical(other.columnId, columnId) || other.columnId == columnId));
}


@override
int get hashCode => Object.hash(runtimeType,prayerId,columnId);

@override
String toString() {
  return 'MyPrayersEvent.deletePray(prayerId: $prayerId, columnId: $columnId)';
}


}

/// @nodoc
abstract mixin class _$DeletePrayerEventCopyWith<$Res> implements $MyPrayersEventCopyWith<$Res> {
  factory _$DeletePrayerEventCopyWith(_DeletePrayerEvent value, $Res Function(_DeletePrayerEvent) _then) = __$DeletePrayerEventCopyWithImpl;
@useResult
$Res call({
 int prayerId, int columnId
});




}
/// @nodoc
class __$DeletePrayerEventCopyWithImpl<$Res>
    implements _$DeletePrayerEventCopyWith<$Res> {
  __$DeletePrayerEventCopyWithImpl(this._self, this._then);

  final _DeletePrayerEvent _self;
  final $Res Function(_DeletePrayerEvent) _then;

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayerId = null,Object? columnId = null,}) {
  return _then(_DeletePrayerEvent(
prayerId: null == prayerId ? _self.prayerId : prayerId // ignore: cast_nullable_to_non_nullable
as int,columnId: null == columnId ? _self.columnId : columnId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PrayEvent implements MyPrayersEvent {
  const _PrayEvent({required this.prayer});
  

 final  PrayerModel prayer;

/// Create a copy of MyPrayersEvent
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
  return 'MyPrayersEvent.pray(prayer: $prayer)';
}


}

/// @nodoc
abstract mixin class _$PrayEventCopyWith<$Res> implements $MyPrayersEventCopyWith<$Res> {
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

/// Create a copy of MyPrayersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,}) {
  return _then(_PrayEvent(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,
  ));
}


}

/// @nodoc
mixin _$MyPrayersState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPrayersState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPrayersState()';
}


}

/// @nodoc
class $MyPrayersStateCopyWith<$Res>  {
$MyPrayersStateCopyWith(MyPrayersState _, $Res Function(MyPrayersState) __);
}


/// Adds pattern-matching-related methods to [MyPrayersState].
extension MyPrayersStatePatterns on MyPrayersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadingState value)?  loading,TResult Function( _LoadedState value)?  loaded,TResult Function( _ErrorState value)?  error,TResult Function( _EmptyState value)?  empty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _ErrorState() when error != null:
return error(_that);case _EmptyState() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadingState value)  loading,required TResult Function( _LoadedState value)  loaded,required TResult Function( _ErrorState value)  error,required TResult Function( _EmptyState value)  empty,}){
final _that = this;
switch (_that) {
case _LoadingState():
return loading(_that);case _LoadedState():
return loaded(_that);case _ErrorState():
return error(_that);case _EmptyState():
return empty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadingState value)?  loading,TResult? Function( _LoadedState value)?  loaded,TResult? Function( _ErrorState value)?  error,TResult? Function( _EmptyState value)?  empty,}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _ErrorState() when error != null:
return error(_that);case _EmptyState() when empty != null:
return empty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<PrayerModel> prayers)?  loaded,TResult Function( String message)?  error,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.prayers);case _ErrorState() when error != null:
return error(_that.message);case _EmptyState() when empty != null:
return empty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<PrayerModel> prayers)  loaded,required TResult Function( String message)  error,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.prayers);case _ErrorState():
return error(_that.message);case _EmptyState():
return empty();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<PrayerModel> prayers)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.prayers);case _ErrorState() when error != null:
return error(_that.message);case _EmptyState() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class _LoadingState implements MyPrayersState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPrayersState.loading()';
}


}




/// @nodoc


class _LoadedState implements MyPrayersState {
  const _LoadedState({required final  List<PrayerModel> prayers}): _prayers = prayers;
  

 final  List<PrayerModel> _prayers;
 List<PrayerModel> get prayers {
  if (_prayers is EqualUnmodifiableListView) return _prayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_prayers);
}


/// Create a copy of MyPrayersState
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
  return 'MyPrayersState.loaded(prayers: $prayers)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $MyPrayersStateCopyWith<$Res> {
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

/// Create a copy of MyPrayersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayers = null,}) {
  return _then(_LoadedState(
prayers: null == prayers ? _self._prayers : prayers // ignore: cast_nullable_to_non_nullable
as List<PrayerModel>,
  ));
}


}

/// @nodoc


class _ErrorState implements MyPrayersState {
  const _ErrorState({required this.message});
  

 final  String message;

/// Create a copy of MyPrayersState
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
  return 'MyPrayersState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $MyPrayersStateCopyWith<$Res> {
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

/// Create a copy of MyPrayersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EmptyState implements MyPrayersState {
  const _EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPrayersState.empty()';
}


}




// dart format on
