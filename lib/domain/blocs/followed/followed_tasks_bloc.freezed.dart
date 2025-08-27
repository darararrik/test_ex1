// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'followed_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FollowedTasksEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowedTasksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedTasksEvent()';
}


}

/// @nodoc
class $FollowedTasksEventCopyWith<$Res>  {
$FollowedTasksEventCopyWith(FollowedTasksEvent _, $Res Function(FollowedTasksEvent) __);
}


/// Adds pattern-matching-related methods to [FollowedTasksEvent].
extension FollowedTasksEventPatterns on FollowedTasksEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetFollowedTasksEvent value)?  getFollowedTasks,TResult Function( _PrayFollowedTasksEvent value)?  pray,TResult Function( _SubscribeEvent value)?  subscribe,TResult Function( _UnsubscribeEvent value)?  unsubscribe,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFollowedTasksEvent() when getFollowedTasks != null:
return getFollowedTasks(_that);case _PrayFollowedTasksEvent() when pray != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetFollowedTasksEvent value)  getFollowedTasks,required TResult Function( _PrayFollowedTasksEvent value)  pray,required TResult Function( _SubscribeEvent value)  subscribe,required TResult Function( _UnsubscribeEvent value)  unsubscribe,}){
final _that = this;
switch (_that) {
case _GetFollowedTasksEvent():
return getFollowedTasks(_that);case _PrayFollowedTasksEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetFollowedTasksEvent value)?  getFollowedTasks,TResult? Function( _PrayFollowedTasksEvent value)?  pray,TResult? Function( _SubscribeEvent value)?  subscribe,TResult? Function( _UnsubscribeEvent value)?  unsubscribe,}){
final _that = this;
switch (_that) {
case _GetFollowedTasksEvent() when getFollowedTasks != null:
return getFollowedTasks(_that);case _PrayFollowedTasksEvent() when pray != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getFollowedTasks,TResult Function( TaskModel task)?  pray,TResult Function( TaskModel task)?  subscribe,TResult Function( TaskModel task)?  unsubscribe,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFollowedTasksEvent() when getFollowedTasks != null:
return getFollowedTasks();case _PrayFollowedTasksEvent() when pray != null:
return pray(_that.task);case _SubscribeEvent() when subscribe != null:
return subscribe(_that.task);case _UnsubscribeEvent() when unsubscribe != null:
return unsubscribe(_that.task);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getFollowedTasks,required TResult Function( TaskModel task)  pray,required TResult Function( TaskModel task)  subscribe,required TResult Function( TaskModel task)  unsubscribe,}) {final _that = this;
switch (_that) {
case _GetFollowedTasksEvent():
return getFollowedTasks();case _PrayFollowedTasksEvent():
return pray(_that.task);case _SubscribeEvent():
return subscribe(_that.task);case _UnsubscribeEvent():
return unsubscribe(_that.task);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getFollowedTasks,TResult? Function( TaskModel task)?  pray,TResult? Function( TaskModel task)?  subscribe,TResult? Function( TaskModel task)?  unsubscribe,}) {final _that = this;
switch (_that) {
case _GetFollowedTasksEvent() when getFollowedTasks != null:
return getFollowedTasks();case _PrayFollowedTasksEvent() when pray != null:
return pray(_that.task);case _SubscribeEvent() when subscribe != null:
return subscribe(_that.task);case _UnsubscribeEvent() when unsubscribe != null:
return unsubscribe(_that.task);case _:
  return null;

}
}

}

/// @nodoc


class _GetFollowedTasksEvent implements FollowedTasksEvent {
  const _GetFollowedTasksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFollowedTasksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedTasksEvent.getFollowedTasks()';
}


}




/// @nodoc


class _PrayFollowedTasksEvent implements FollowedTasksEvent {
  const _PrayFollowedTasksEvent(this.task);
  

 final  TaskModel task;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayFollowedTasksEventCopyWith<_PrayFollowedTasksEvent> get copyWith => __$PrayFollowedTasksEventCopyWithImpl<_PrayFollowedTasksEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayFollowedTasksEvent&&const DeepCollectionEquality().equals(other.task, task));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(task));

@override
String toString() {
  return 'FollowedTasksEvent.pray(task: $task)';
}


}

/// @nodoc
abstract mixin class _$PrayFollowedTasksEventCopyWith<$Res> implements $FollowedTasksEventCopyWith<$Res> {
  factory _$PrayFollowedTasksEventCopyWith(_PrayFollowedTasksEvent value, $Res Function(_PrayFollowedTasksEvent) _then) = __$PrayFollowedTasksEventCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});




}
/// @nodoc
class __$PrayFollowedTasksEventCopyWithImpl<$Res>
    implements _$PrayFollowedTasksEventCopyWith<$Res> {
  __$PrayFollowedTasksEventCopyWithImpl(this._self, this._then);

  final _PrayFollowedTasksEvent _self;
  final $Res Function(_PrayFollowedTasksEvent) _then;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = freezed,}) {
  return _then(_PrayFollowedTasksEvent(
freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}


}

/// @nodoc


class _SubscribeEvent implements FollowedTasksEvent {
  const _SubscribeEvent(this.task);
  

 final  TaskModel task;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscribeEventCopyWith<_SubscribeEvent> get copyWith => __$SubscribeEventCopyWithImpl<_SubscribeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscribeEvent&&const DeepCollectionEquality().equals(other.task, task));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(task));

@override
String toString() {
  return 'FollowedTasksEvent.subscribe(task: $task)';
}


}

/// @nodoc
abstract mixin class _$SubscribeEventCopyWith<$Res> implements $FollowedTasksEventCopyWith<$Res> {
  factory _$SubscribeEventCopyWith(_SubscribeEvent value, $Res Function(_SubscribeEvent) _then) = __$SubscribeEventCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});




}
/// @nodoc
class __$SubscribeEventCopyWithImpl<$Res>
    implements _$SubscribeEventCopyWith<$Res> {
  __$SubscribeEventCopyWithImpl(this._self, this._then);

  final _SubscribeEvent _self;
  final $Res Function(_SubscribeEvent) _then;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = freezed,}) {
  return _then(_SubscribeEvent(
freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}


}

/// @nodoc


class _UnsubscribeEvent implements FollowedTasksEvent {
  const _UnsubscribeEvent(this.task);
  

 final  TaskModel task;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnsubscribeEventCopyWith<_UnsubscribeEvent> get copyWith => __$UnsubscribeEventCopyWithImpl<_UnsubscribeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnsubscribeEvent&&const DeepCollectionEquality().equals(other.task, task));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(task));

@override
String toString() {
  return 'FollowedTasksEvent.unsubscribe(task: $task)';
}


}

/// @nodoc
abstract mixin class _$UnsubscribeEventCopyWith<$Res> implements $FollowedTasksEventCopyWith<$Res> {
  factory _$UnsubscribeEventCopyWith(_UnsubscribeEvent value, $Res Function(_UnsubscribeEvent) _then) = __$UnsubscribeEventCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});




}
/// @nodoc
class __$UnsubscribeEventCopyWithImpl<$Res>
    implements _$UnsubscribeEventCopyWith<$Res> {
  __$UnsubscribeEventCopyWithImpl(this._self, this._then);

  final _UnsubscribeEvent _self;
  final $Res Function(_UnsubscribeEvent) _then;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = freezed,}) {
  return _then(_UnsubscribeEvent(
freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}


}

/// @nodoc
mixin _$FollowedTasksState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FollowedTasksState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedTasksState()';
}


}

/// @nodoc
class $FollowedTasksStateCopyWith<$Res>  {
$FollowedTasksStateCopyWith(FollowedTasksState _, $Res Function(FollowedTasksState) __);
}


/// Adds pattern-matching-related methods to [FollowedTasksState].
extension FollowedTasksStatePatterns on FollowedTasksState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function()?  loading,TResult Function( List<TaskModel> tasks)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.tasks);case _ErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function()  loading,required TResult Function( List<TaskModel> tasks)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _EmptyState():
return empty();case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.tasks);case _ErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function()?  loading,TResult? Function( List<TaskModel> tasks)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.tasks);case _ErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _EmptyState implements FollowedTasksState {
  const _EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedTasksState.empty()';
}


}




/// @nodoc


class _LoadingState implements FollowedTasksState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedTasksState.loading()';
}


}




/// @nodoc


class _LoadedState implements FollowedTasksState {
  const _LoadedState(final  List<TaskModel> tasks): _tasks = tasks;
  

 final  List<TaskModel> _tasks;
 List<TaskModel> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of FollowedTasksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedStateCopyWith<_LoadedState> get copyWith => __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedState&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'FollowedTasksState.loaded(tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $FollowedTasksStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 List<TaskModel> tasks
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of FollowedTasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tasks = null,}) {
  return _then(_LoadedState(
null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,
  ));
}


}

/// @nodoc


class _ErrorState implements FollowedTasksState {
  const _ErrorState(this.message);
  

 final  String message;

/// Create a copy of FollowedTasksState
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
  return 'FollowedTasksState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $FollowedTasksStateCopyWith<$Res> {
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

/// Create a copy of FollowedTasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
