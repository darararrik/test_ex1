// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_desks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsersDesksEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersDesksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersDesksEvent()';
}


}

/// @nodoc
class $UsersDesksEventCopyWith<$Res>  {
$UsersDesksEventCopyWith(UsersDesksEvent _, $Res Function(UsersDesksEvent) __);
}


/// Adds pattern-matching-related methods to [UsersDesksEvent].
extension UsersDesksEventPatterns on UsersDesksEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetUsersDesksEvent value)?  getUsersDesks,TResult Function( _GetDesksByUserIdEvent value)?  getDesksByUserId,TResult Function( _GetTasksByDeskIdEvent value)?  getTasksByDeskId,TResult Function( _PrayEvent value)?  pray,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUsersDesksEvent() when getUsersDesks != null:
return getUsersDesks(_that);case _GetDesksByUserIdEvent() when getDesksByUserId != null:
return getDesksByUserId(_that);case _GetTasksByDeskIdEvent() when getTasksByDeskId != null:
return getTasksByDeskId(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetUsersDesksEvent value)  getUsersDesks,required TResult Function( _GetDesksByUserIdEvent value)  getDesksByUserId,required TResult Function( _GetTasksByDeskIdEvent value)  getTasksByDeskId,required TResult Function( _PrayEvent value)  pray,}){
final _that = this;
switch (_that) {
case _GetUsersDesksEvent():
return getUsersDesks(_that);case _GetDesksByUserIdEvent():
return getDesksByUserId(_that);case _GetTasksByDeskIdEvent():
return getTasksByDeskId(_that);case _PrayEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetUsersDesksEvent value)?  getUsersDesks,TResult? Function( _GetDesksByUserIdEvent value)?  getDesksByUserId,TResult? Function( _GetTasksByDeskIdEvent value)?  getTasksByDeskId,TResult? Function( _PrayEvent value)?  pray,}){
final _that = this;
switch (_that) {
case _GetUsersDesksEvent() when getUsersDesks != null:
return getUsersDesks(_that);case _GetDesksByUserIdEvent() when getDesksByUserId != null:
return getDesksByUserId(_that);case _GetTasksByDeskIdEvent() when getTasksByDeskId != null:
return getTasksByDeskId(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getUsersDesks,TResult Function( int userId)?  getDesksByUserId,TResult Function( int userId,  int deskId)?  getTasksByDeskId,TResult Function( TaskModel task)?  pray,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUsersDesksEvent() when getUsersDesks != null:
return getUsersDesks();case _GetDesksByUserIdEvent() when getDesksByUserId != null:
return getDesksByUserId(_that.userId);case _GetTasksByDeskIdEvent() when getTasksByDeskId != null:
return getTasksByDeskId(_that.userId,_that.deskId);case _PrayEvent() when pray != null:
return pray(_that.task);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getUsersDesks,required TResult Function( int userId)  getDesksByUserId,required TResult Function( int userId,  int deskId)  getTasksByDeskId,required TResult Function( TaskModel task)  pray,}) {final _that = this;
switch (_that) {
case _GetUsersDesksEvent():
return getUsersDesks();case _GetDesksByUserIdEvent():
return getDesksByUserId(_that.userId);case _GetTasksByDeskIdEvent():
return getTasksByDeskId(_that.userId,_that.deskId);case _PrayEvent():
return pray(_that.task);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getUsersDesks,TResult? Function( int userId)?  getDesksByUserId,TResult? Function( int userId,  int deskId)?  getTasksByDeskId,TResult? Function( TaskModel task)?  pray,}) {final _that = this;
switch (_that) {
case _GetUsersDesksEvent() when getUsersDesks != null:
return getUsersDesks();case _GetDesksByUserIdEvent() when getDesksByUserId != null:
return getDesksByUserId(_that.userId);case _GetTasksByDeskIdEvent() when getTasksByDeskId != null:
return getTasksByDeskId(_that.userId,_that.deskId);case _PrayEvent() when pray != null:
return pray(_that.task);case _:
  return null;

}
}

}

/// @nodoc


class _GetUsersDesksEvent implements UsersDesksEvent {
  const _GetUsersDesksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUsersDesksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersDesksEvent.getUsersDesks()';
}


}




/// @nodoc


class _GetDesksByUserIdEvent implements UsersDesksEvent {
  const _GetDesksByUserIdEvent(this.userId);
  

 final  int userId;

/// Create a copy of UsersDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDesksByUserIdEventCopyWith<_GetDesksByUserIdEvent> get copyWith => __$GetDesksByUserIdEventCopyWithImpl<_GetDesksByUserIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDesksByUserIdEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'UsersDesksEvent.getDesksByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetDesksByUserIdEventCopyWith<$Res> implements $UsersDesksEventCopyWith<$Res> {
  factory _$GetDesksByUserIdEventCopyWith(_GetDesksByUserIdEvent value, $Res Function(_GetDesksByUserIdEvent) _then) = __$GetDesksByUserIdEventCopyWithImpl;
@useResult
$Res call({
 int userId
});




}
/// @nodoc
class __$GetDesksByUserIdEventCopyWithImpl<$Res>
    implements _$GetDesksByUserIdEventCopyWith<$Res> {
  __$GetDesksByUserIdEventCopyWithImpl(this._self, this._then);

  final _GetDesksByUserIdEvent _self;
  final $Res Function(_GetDesksByUserIdEvent) _then;

/// Create a copy of UsersDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetDesksByUserIdEvent(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _GetTasksByDeskIdEvent implements UsersDesksEvent {
  const _GetTasksByDeskIdEvent(this.userId, this.deskId);
  

 final  int userId;
 final  int deskId;

/// Create a copy of UsersDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTasksByDeskIdEventCopyWith<_GetTasksByDeskIdEvent> get copyWith => __$GetTasksByDeskIdEventCopyWithImpl<_GetTasksByDeskIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTasksByDeskIdEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deskId, deskId) || other.deskId == deskId));
}


@override
int get hashCode => Object.hash(runtimeType,userId,deskId);

@override
String toString() {
  return 'UsersDesksEvent.getTasksByDeskId(userId: $userId, deskId: $deskId)';
}


}

/// @nodoc
abstract mixin class _$GetTasksByDeskIdEventCopyWith<$Res> implements $UsersDesksEventCopyWith<$Res> {
  factory _$GetTasksByDeskIdEventCopyWith(_GetTasksByDeskIdEvent value, $Res Function(_GetTasksByDeskIdEvent) _then) = __$GetTasksByDeskIdEventCopyWithImpl;
@useResult
$Res call({
 int userId, int deskId
});




}
/// @nodoc
class __$GetTasksByDeskIdEventCopyWithImpl<$Res>
    implements _$GetTasksByDeskIdEventCopyWith<$Res> {
  __$GetTasksByDeskIdEventCopyWithImpl(this._self, this._then);

  final _GetTasksByDeskIdEvent _self;
  final $Res Function(_GetTasksByDeskIdEvent) _then;

/// Create a copy of UsersDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? deskId = null,}) {
  return _then(_GetTasksByDeskIdEvent(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PrayEvent implements UsersDesksEvent {
  const _PrayEvent(this.task);
  

 final  TaskModel task;

/// Create a copy of UsersDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayEventCopyWith<_PrayEvent> get copyWith => __$PrayEventCopyWithImpl<_PrayEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayEvent&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'UsersDesksEvent.pray(task: $task)';
}


}

/// @nodoc
abstract mixin class _$PrayEventCopyWith<$Res> implements $UsersDesksEventCopyWith<$Res> {
  factory _$PrayEventCopyWith(_PrayEvent value, $Res Function(_PrayEvent) _then) = __$PrayEventCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$PrayEventCopyWithImpl<$Res>
    implements _$PrayEventCopyWith<$Res> {
  __$PrayEventCopyWithImpl(this._self, this._then);

  final _PrayEvent _self;
  final $Res Function(_PrayEvent) _then;

/// Create a copy of UsersDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(_PrayEvent(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}

/// Create a copy of UsersDesksEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TaskModelCopyWith<$Res> get task {
  
  return $TaskModelCopyWith<$Res>(_self.task, (value) {
    return _then(_self.copyWith(task: value));
  });
}
}

/// @nodoc
mixin _$UsersDesksState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersDesksState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersDesksState()';
}


}

/// @nodoc
class $UsersDesksStateCopyWith<$Res>  {
$UsersDesksStateCopyWith(UsersDesksState _, $Res Function(UsersDesksState) __);
}


/// Adds pattern-matching-related methods to [UsersDesksState].
extension UsersDesksStatePatterns on UsersDesksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadingState value)?  loading,TResult Function( _EmptyState value)?  empty,TResult Function( _ErrorState value)?  error,TResult Function( _LoadedState value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading(_that);case _EmptyState() when empty != null:
return empty(_that);case _ErrorState() when error != null:
return error(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadingState value)  loading,required TResult Function( _EmptyState value)  empty,required TResult Function( _ErrorState value)  error,required TResult Function( _LoadedState value)  loaded,}){
final _that = this;
switch (_that) {
case _LoadingState():
return loading(_that);case _EmptyState():
return empty(_that);case _ErrorState():
return error(_that);case _LoadedState():
return loaded(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadingState value)?  loading,TResult? Function( _EmptyState value)?  empty,TResult? Function( _ErrorState value)?  error,TResult? Function( _LoadedState value)?  loaded,}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading(_that);case _EmptyState() when empty != null:
return empty(_that);case _ErrorState() when error != null:
return error(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  empty,TResult Function( String message)?  error,TResult Function( List<UsersDesksModel> desks)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _EmptyState() when empty != null:
return empty();case _ErrorState() when error != null:
return error(_that.message);case _LoadedState() when loaded != null:
return loaded(_that.desks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  empty,required TResult Function( String message)  error,required TResult Function( List<UsersDesksModel> desks)  loaded,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _EmptyState():
return empty();case _ErrorState():
return error(_that.message);case _LoadedState():
return loaded(_that.desks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  empty,TResult? Function( String message)?  error,TResult? Function( List<UsersDesksModel> desks)?  loaded,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _EmptyState() when empty != null:
return empty();case _ErrorState() when error != null:
return error(_that.message);case _LoadedState() when loaded != null:
return loaded(_that.desks);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingState implements UsersDesksState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersDesksState.loading()';
}


}




/// @nodoc


class _EmptyState implements UsersDesksState {
  const _EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UsersDesksState.empty()';
}


}




/// @nodoc


class _ErrorState implements UsersDesksState {
  const _ErrorState(this.message);
  

 final  String message;

/// Create a copy of UsersDesksState
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
  return 'UsersDesksState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $UsersDesksStateCopyWith<$Res> {
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

/// Create a copy of UsersDesksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadedState implements UsersDesksState {
  const _LoadedState(final  List<UsersDesksModel> desks): _desks = desks;
  

 final  List<UsersDesksModel> _desks;
 List<UsersDesksModel> get desks {
  if (_desks is EqualUnmodifiableListView) return _desks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_desks);
}


/// Create a copy of UsersDesksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedStateCopyWith<_LoadedState> get copyWith => __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedState&&const DeepCollectionEquality().equals(other._desks, _desks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_desks));

@override
String toString() {
  return 'UsersDesksState.loaded(desks: $desks)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $UsersDesksStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 List<UsersDesksModel> desks
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of UsersDesksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? desks = null,}) {
  return _then(_LoadedState(
null == desks ? _self._desks : desks // ignore: cast_nullable_to_non_nullable
as List<UsersDesksModel>,
  ));
}


}

// dart format on
