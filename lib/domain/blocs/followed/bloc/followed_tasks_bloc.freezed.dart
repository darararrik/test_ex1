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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetFollowedTasks value)?  getFollowedTasks,TResult Function( _RefreshFollowedTasks value)?  refreshFollowedTasks,TResult Function( _AddFollowedTask value)?  addFollowedTask,TResult Function( _RemoveFollowedTask value)?  removeFollowedTask,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFollowedTasks() when getFollowedTasks != null:
return getFollowedTasks(_that);case _RefreshFollowedTasks() when refreshFollowedTasks != null:
return refreshFollowedTasks(_that);case _AddFollowedTask() when addFollowedTask != null:
return addFollowedTask(_that);case _RemoveFollowedTask() when removeFollowedTask != null:
return removeFollowedTask(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetFollowedTasks value)  getFollowedTasks,required TResult Function( _RefreshFollowedTasks value)  refreshFollowedTasks,required TResult Function( _AddFollowedTask value)  addFollowedTask,required TResult Function( _RemoveFollowedTask value)  removeFollowedTask,}){
final _that = this;
switch (_that) {
case _GetFollowedTasks():
return getFollowedTasks(_that);case _RefreshFollowedTasks():
return refreshFollowedTasks(_that);case _AddFollowedTask():
return addFollowedTask(_that);case _RemoveFollowedTask():
return removeFollowedTask(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetFollowedTasks value)?  getFollowedTasks,TResult? Function( _RefreshFollowedTasks value)?  refreshFollowedTasks,TResult? Function( _AddFollowedTask value)?  addFollowedTask,TResult? Function( _RemoveFollowedTask value)?  removeFollowedTask,}){
final _that = this;
switch (_that) {
case _GetFollowedTasks() when getFollowedTasks != null:
return getFollowedTasks(_that);case _RefreshFollowedTasks() when refreshFollowedTasks != null:
return refreshFollowedTasks(_that);case _AddFollowedTask() when addFollowedTask != null:
return addFollowedTask(_that);case _RemoveFollowedTask() when removeFollowedTask != null:
return removeFollowedTask(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getFollowedTasks,TResult Function()?  refreshFollowedTasks,TResult Function( TaskModel task)?  addFollowedTask,TResult Function( TaskModel task)?  removeFollowedTask,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFollowedTasks() when getFollowedTasks != null:
return getFollowedTasks();case _RefreshFollowedTasks() when refreshFollowedTasks != null:
return refreshFollowedTasks();case _AddFollowedTask() when addFollowedTask != null:
return addFollowedTask(_that.task);case _RemoveFollowedTask() when removeFollowedTask != null:
return removeFollowedTask(_that.task);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getFollowedTasks,required TResult Function()  refreshFollowedTasks,required TResult Function( TaskModel task)  addFollowedTask,required TResult Function( TaskModel task)  removeFollowedTask,}) {final _that = this;
switch (_that) {
case _GetFollowedTasks():
return getFollowedTasks();case _RefreshFollowedTasks():
return refreshFollowedTasks();case _AddFollowedTask():
return addFollowedTask(_that.task);case _RemoveFollowedTask():
return removeFollowedTask(_that.task);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getFollowedTasks,TResult? Function()?  refreshFollowedTasks,TResult? Function( TaskModel task)?  addFollowedTask,TResult? Function( TaskModel task)?  removeFollowedTask,}) {final _that = this;
switch (_that) {
case _GetFollowedTasks() when getFollowedTasks != null:
return getFollowedTasks();case _RefreshFollowedTasks() when refreshFollowedTasks != null:
return refreshFollowedTasks();case _AddFollowedTask() when addFollowedTask != null:
return addFollowedTask(_that.task);case _RemoveFollowedTask() when removeFollowedTask != null:
return removeFollowedTask(_that.task);case _:
  return null;

}
}

}

/// @nodoc


class _GetFollowedTasks implements FollowedTasksEvent {
  const _GetFollowedTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFollowedTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedTasksEvent.getFollowedTasks()';
}


}




/// @nodoc


class _RefreshFollowedTasks implements FollowedTasksEvent {
  const _RefreshFollowedTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RefreshFollowedTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FollowedTasksEvent.refreshFollowedTasks()';
}


}




/// @nodoc


class _AddFollowedTask implements FollowedTasksEvent {
  const _AddFollowedTask(this.task);
  

 final  TaskModel task;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddFollowedTaskCopyWith<_AddFollowedTask> get copyWith => __$AddFollowedTaskCopyWithImpl<_AddFollowedTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddFollowedTask&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'FollowedTasksEvent.addFollowedTask(task: $task)';
}


}

/// @nodoc
abstract mixin class _$AddFollowedTaskCopyWith<$Res> implements $FollowedTasksEventCopyWith<$Res> {
  factory _$AddFollowedTaskCopyWith(_AddFollowedTask value, $Res Function(_AddFollowedTask) _then) = __$AddFollowedTaskCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$AddFollowedTaskCopyWithImpl<$Res>
    implements _$AddFollowedTaskCopyWith<$Res> {
  __$AddFollowedTaskCopyWithImpl(this._self, this._then);

  final _AddFollowedTask _self;
  final $Res Function(_AddFollowedTask) _then;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(_AddFollowedTask(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}

/// Create a copy of FollowedTasksEvent
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


class _RemoveFollowedTask implements FollowedTasksEvent {
  const _RemoveFollowedTask(this.task);
  

 final  TaskModel task;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveFollowedTaskCopyWith<_RemoveFollowedTask> get copyWith => __$RemoveFollowedTaskCopyWithImpl<_RemoveFollowedTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveFollowedTask&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'FollowedTasksEvent.removeFollowedTask(task: $task)';
}


}

/// @nodoc
abstract mixin class _$RemoveFollowedTaskCopyWith<$Res> implements $FollowedTasksEventCopyWith<$Res> {
  factory _$RemoveFollowedTaskCopyWith(_RemoveFollowedTask value, $Res Function(_RemoveFollowedTask) _then) = __$RemoveFollowedTaskCopyWithImpl;
@useResult
$Res call({
 TaskModel task
});


$TaskModelCopyWith<$Res> get task;

}
/// @nodoc
class __$RemoveFollowedTaskCopyWithImpl<$Res>
    implements _$RemoveFollowedTaskCopyWith<$Res> {
  __$RemoveFollowedTaskCopyWithImpl(this._self, this._then);

  final _RemoveFollowedTask _self;
  final $Res Function(_RemoveFollowedTask) _then;

/// Create a copy of FollowedTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(_RemoveFollowedTask(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}

/// Create a copy of FollowedTasksEvent
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  empty,TResult Function( String message)?  error,TResult Function( List<TaskModel> tasks)?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _EmptyState() when empty != null:
return empty();case _ErrorState() when error != null:
return error(_that.message);case _LoadedState() when loaded != null:
return loaded(_that.tasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  empty,required TResult Function( String message)  error,required TResult Function( List<TaskModel> tasks)  loaded,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _EmptyState():
return empty();case _ErrorState():
return error(_that.message);case _LoadedState():
return loaded(_that.tasks);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  empty,TResult? Function( String message)?  error,TResult? Function( List<TaskModel> tasks)?  loaded,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _EmptyState() when empty != null:
return empty();case _ErrorState() when error != null:
return error(_that.message);case _LoadedState() when loaded != null:
return loaded(_that.tasks);case _:
  return null;

}
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

// dart format on
