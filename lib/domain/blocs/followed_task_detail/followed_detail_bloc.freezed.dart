// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followed_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FollowedDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowedDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedDetailEvent()';
}


}

/// @nodoc
class $FollowedDetailEventCopyWith<$Res>  {
$FollowedDetailEventCopyWith(FollowedDetailEvent _, $Res Function(FollowedDetailEvent) __);
}


/// Adds pattern-matching-related methods to [FollowedDetailEvent].
extension FollowedDetailEventPatterns on FollowedDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetTaskByIdEvent value)?  getTaskById,TResult Function( _PrayEvent value)?  pray,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTaskByIdEvent() when getTaskById != null:
return getTaskById(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetTaskByIdEvent value)  getTaskById,required TResult Function( _PrayEvent value)  pray,}){
final _that = this;
switch (_that) {
case _GetTaskByIdEvent():
return getTaskById(_that);case _PrayEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetTaskByIdEvent value)?  getTaskById,TResult? Function( _PrayEvent value)?  pray,}){
final _that = this;
switch (_that) {
case _GetTaskByIdEvent() when getTaskById != null:
return getTaskById(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int taskId,  int deskId,  int userId)?  getTaskById,TResult Function( TaskModel task)?  pray,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTaskByIdEvent() when getTaskById != null:
return getTaskById(_that.taskId,_that.deskId,_that.userId);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int taskId,  int deskId,  int userId)  getTaskById,required TResult Function( TaskModel task)  pray,}) {final _that = this;
switch (_that) {
case _GetTaskByIdEvent():
return getTaskById(_that.taskId,_that.deskId,_that.userId);case _PrayEvent():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int taskId,  int deskId,  int userId)?  getTaskById,TResult? Function( TaskModel task)?  pray,}) {final _that = this;
switch (_that) {
case _GetTaskByIdEvent() when getTaskById != null:
return getTaskById(_that.taskId,_that.deskId,_that.userId);case _PrayEvent() when pray != null:
return pray(_that.task);case _:
  return null;

}
}

}

/// @nodoc


class _GetTaskByIdEvent implements FollowedDetailEvent {
  const _GetTaskByIdEvent(this.taskId, this.deskId, this.userId);
  

 final  int taskId;
 final  int deskId;
 final  int userId;

/// Create a copy of FollowedDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTaskByIdEventCopyWith<_GetTaskByIdEvent> get copyWith => __$GetTaskByIdEventCopyWithImpl<_GetTaskByIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTaskByIdEvent&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.deskId, deskId) || other.deskId == deskId)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,deskId,userId);

@override
String toString() {
  return 'FollowedDetailEvent.getTaskById(taskId: $taskId, deskId: $deskId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetTaskByIdEventCopyWith<$Res> implements $FollowedDetailEventCopyWith<$Res> {
  factory _$GetTaskByIdEventCopyWith(_GetTaskByIdEvent value, $Res Function(_GetTaskByIdEvent) _then) = __$GetTaskByIdEventCopyWithImpl;
@useResult
$Res call({
 int taskId, int deskId, int userId
});




}
/// @nodoc
class __$GetTaskByIdEventCopyWithImpl<$Res>
    implements _$GetTaskByIdEventCopyWith<$Res> {
  __$GetTaskByIdEventCopyWithImpl(this._self, this._then);

  final _GetTaskByIdEvent _self;
  final $Res Function(_GetTaskByIdEvent) _then;

/// Create a copy of FollowedDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,Object? deskId = null,Object? userId = null,}) {
  return _then(_GetTaskByIdEvent(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as int,null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PrayEvent implements FollowedDetailEvent {
  const _PrayEvent(this.task);
  

 final  TaskModel task;

/// Create a copy of FollowedDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayEventCopyWith<_PrayEvent> get copyWith => __$PrayEventCopyWithImpl<_PrayEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayEvent&&const DeepCollectionEquality().equals(other.task, task));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(task));

@override
String toString() {
  return 'FollowedDetailEvent.pray(task: $task)';
}


}

/// @nodoc
abstract mixin class _$PrayEventCopyWith<$Res> implements $FollowedDetailEventCopyWith<$Res> {
  factory _$PrayEventCopyWith(_PrayEvent value, $Res Function(_PrayEvent) _then) = __$PrayEventCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});




}
/// @nodoc
class __$PrayEventCopyWithImpl<$Res>
    implements _$PrayEventCopyWith<$Res> {
  __$PrayEventCopyWithImpl(this._self, this._then);

  final _PrayEvent _self;
  final $Res Function(_PrayEvent) _then;

/// Create a copy of FollowedDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = freezed,}) {
  return _then(_PrayEvent(
freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}


}

/// @nodoc
mixin _$FollowedDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowedDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedDetailState()';
}


}

/// @nodoc
class $FollowedDetailStateCopyWith<$Res>  {
$FollowedDetailStateCopyWith(FollowedDetailState _, $Res Function(FollowedDetailState) __);
}


/// Adds pattern-matching-related methods to [FollowedDetailState].
extension FollowedDetailStatePatterns on FollowedDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadingState value)?  loading,TResult Function( _LoadedState value)?  loaded,TResult Function( _ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadingState value)  loading,required TResult Function( _LoadedState value)  loaded,required TResult Function( _ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _LoadingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadingState value)?  loading,TResult? Function( _LoadedState value)?  loaded,TResult? Function( _ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( TaskModel task)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.task);case _ErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( TaskModel task)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.task);case _ErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( TaskModel task)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.task);case _ErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingState implements FollowedDetailState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedDetailState.loading()';
}


}




/// @nodoc


class _LoadedState implements FollowedDetailState {
  const _LoadedState(this.task);
  

 final  TaskModel task;

/// Create a copy of FollowedDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedStateCopyWith<_LoadedState> get copyWith => __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedState&&const DeepCollectionEquality().equals(other.task, task));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(task));

@override
String toString() {
  return 'FollowedDetailState.loaded(task: $task)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $FollowedDetailStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of FollowedDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = freezed,}) {
  return _then(_LoadedState(
freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}


}

/// @nodoc


class _ErrorState implements FollowedDetailState {
  const _ErrorState(this.message);
  

 final  String message;

/// Create a copy of FollowedDetailState
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
  return 'FollowedDetailState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $FollowedDetailStateCopyWith<$Res> {
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

/// Create a copy of FollowedDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
