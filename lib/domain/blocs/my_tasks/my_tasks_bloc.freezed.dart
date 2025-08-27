// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyTasksEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTasksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTasksEvent()';
}


}

/// @nodoc
class $MyTasksEventCopyWith<$Res>  {
$MyTasksEventCopyWith(MyTasksEvent _, $Res Function(MyTasksEvent) __);
}


/// Adds pattern-matching-related methods to [MyTasksEvent].
extension MyTasksEventPatterns on MyTasksEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetTasksByDeskIdEvent value)?  getTasksByDeskId,TResult Function( _RenameTaskEvent value)?  renameTask,TResult Function( _CreateTaskEvent value)?  createTask,TResult Function( _RemoveTaskEvent value)?  removeTask,TResult Function( _PrayEvent value)?  pray,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetTasksByDeskIdEvent() when getTasksByDeskId != null:
return getTasksByDeskId(_that);case _RenameTaskEvent() when renameTask != null:
return renameTask(_that);case _CreateTaskEvent() when createTask != null:
return createTask(_that);case _RemoveTaskEvent() when removeTask != null:
return removeTask(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetTasksByDeskIdEvent value)  getTasksByDeskId,required TResult Function( _RenameTaskEvent value)  renameTask,required TResult Function( _CreateTaskEvent value)  createTask,required TResult Function( _RemoveTaskEvent value)  removeTask,required TResult Function( _PrayEvent value)  pray,}){
final _that = this;
switch (_that) {
case _GetTasksByDeskIdEvent():
return getTasksByDeskId(_that);case _RenameTaskEvent():
return renameTask(_that);case _CreateTaskEvent():
return createTask(_that);case _RemoveTaskEvent():
return removeTask(_that);case _PrayEvent():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetTasksByDeskIdEvent value)?  getTasksByDeskId,TResult? Function( _RenameTaskEvent value)?  renameTask,TResult? Function( _CreateTaskEvent value)?  createTask,TResult? Function( _RemoveTaskEvent value)?  removeTask,TResult? Function( _PrayEvent value)?  pray,}){
final _that = this;
switch (_that) {
case _GetTasksByDeskIdEvent() when getTasksByDeskId != null:
return getTasksByDeskId(_that);case _RenameTaskEvent() when renameTask != null:
return renameTask(_that);case _CreateTaskEvent() when createTask != null:
return createTask(_that);case _RemoveTaskEvent() when removeTask != null:
return removeTask(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int deskId)?  getTasksByDeskId,TResult Function( int taskId,  int deskId,  String newTitle)?  renameTask,TResult Function( String title,  int deskId)?  createTask,TResult Function( int taskId,  int deskId)?  removeTask,TResult Function( TaskModel task)?  pray,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetTasksByDeskIdEvent() when getTasksByDeskId != null:
return getTasksByDeskId(_that.deskId);case _RenameTaskEvent() when renameTask != null:
return renameTask(_that.taskId,_that.deskId,_that.newTitle);case _CreateTaskEvent() when createTask != null:
return createTask(_that.title,_that.deskId);case _RemoveTaskEvent() when removeTask != null:
return removeTask(_that.taskId,_that.deskId);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int deskId)  getTasksByDeskId,required TResult Function( int taskId,  int deskId,  String newTitle)  renameTask,required TResult Function( String title,  int deskId)  createTask,required TResult Function( int taskId,  int deskId)  removeTask,required TResult Function( TaskModel task)  pray,}) {final _that = this;
switch (_that) {
case _GetTasksByDeskIdEvent():
return getTasksByDeskId(_that.deskId);case _RenameTaskEvent():
return renameTask(_that.taskId,_that.deskId,_that.newTitle);case _CreateTaskEvent():
return createTask(_that.title,_that.deskId);case _RemoveTaskEvent():
return removeTask(_that.taskId,_that.deskId);case _PrayEvent():
return pray(_that.task);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int deskId)?  getTasksByDeskId,TResult? Function( int taskId,  int deskId,  String newTitle)?  renameTask,TResult? Function( String title,  int deskId)?  createTask,TResult? Function( int taskId,  int deskId)?  removeTask,TResult? Function( TaskModel task)?  pray,}) {final _that = this;
switch (_that) {
case _GetTasksByDeskIdEvent() when getTasksByDeskId != null:
return getTasksByDeskId(_that.deskId);case _RenameTaskEvent() when renameTask != null:
return renameTask(_that.taskId,_that.deskId,_that.newTitle);case _CreateTaskEvent() when createTask != null:
return createTask(_that.title,_that.deskId);case _RemoveTaskEvent() when removeTask != null:
return removeTask(_that.taskId,_that.deskId);case _PrayEvent() when pray != null:
return pray(_that.task);case _:
  return null;

}
}

}

/// @nodoc


class _GetTasksByDeskIdEvent implements MyTasksEvent {
  const _GetTasksByDeskIdEvent(this.deskId);
  

 final  int deskId;

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetTasksByDeskIdEventCopyWith<_GetTasksByDeskIdEvent> get copyWith => __$GetTasksByDeskIdEventCopyWithImpl<_GetTasksByDeskIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTasksByDeskIdEvent&&(identical(other.deskId, deskId) || other.deskId == deskId));
}


@override
int get hashCode => Object.hash(runtimeType,deskId);

@override
String toString() {
  return 'MyTasksEvent.getTasksByDeskId(deskId: $deskId)';
}


}

/// @nodoc
abstract mixin class _$GetTasksByDeskIdEventCopyWith<$Res> implements $MyTasksEventCopyWith<$Res> {
  factory _$GetTasksByDeskIdEventCopyWith(_GetTasksByDeskIdEvent value, $Res Function(_GetTasksByDeskIdEvent) _then) = __$GetTasksByDeskIdEventCopyWithImpl;
@useResult
$Res call({
 int deskId
});




}
/// @nodoc
class __$GetTasksByDeskIdEventCopyWithImpl<$Res>
    implements _$GetTasksByDeskIdEventCopyWith<$Res> {
  __$GetTasksByDeskIdEventCopyWithImpl(this._self, this._then);

  final _GetTasksByDeskIdEvent _self;
  final $Res Function(_GetTasksByDeskIdEvent) _then;

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deskId = null,}) {
  return _then(_GetTasksByDeskIdEvent(
null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RenameTaskEvent implements MyTasksEvent {
  const _RenameTaskEvent(this.taskId, this.deskId, this.newTitle);
  

 final  int taskId;
 final  int deskId;
 final  String newTitle;

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RenameTaskEventCopyWith<_RenameTaskEvent> get copyWith => __$RenameTaskEventCopyWithImpl<_RenameTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RenameTaskEvent&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.deskId, deskId) || other.deskId == deskId)&&(identical(other.newTitle, newTitle) || other.newTitle == newTitle));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,deskId,newTitle);

@override
String toString() {
  return 'MyTasksEvent.renameTask(taskId: $taskId, deskId: $deskId, newTitle: $newTitle)';
}


}

/// @nodoc
abstract mixin class _$RenameTaskEventCopyWith<$Res> implements $MyTasksEventCopyWith<$Res> {
  factory _$RenameTaskEventCopyWith(_RenameTaskEvent value, $Res Function(_RenameTaskEvent) _then) = __$RenameTaskEventCopyWithImpl;
@useResult
$Res call({
 int taskId, int deskId, String newTitle
});




}
/// @nodoc
class __$RenameTaskEventCopyWithImpl<$Res>
    implements _$RenameTaskEventCopyWith<$Res> {
  __$RenameTaskEventCopyWithImpl(this._self, this._then);

  final _RenameTaskEvent _self;
  final $Res Function(_RenameTaskEvent) _then;

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,Object? deskId = null,Object? newTitle = null,}) {
  return _then(_RenameTaskEvent(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as int,null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,null == newTitle ? _self.newTitle : newTitle // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreateTaskEvent implements MyTasksEvent {
  const _CreateTaskEvent(this.title, this.deskId);
  

 final  String title;
 final  int deskId;

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateTaskEventCopyWith<_CreateTaskEvent> get copyWith => __$CreateTaskEventCopyWithImpl<_CreateTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTaskEvent&&(identical(other.title, title) || other.title == title)&&(identical(other.deskId, deskId) || other.deskId == deskId));
}


@override
int get hashCode => Object.hash(runtimeType,title,deskId);

@override
String toString() {
  return 'MyTasksEvent.createTask(title: $title, deskId: $deskId)';
}


}

/// @nodoc
abstract mixin class _$CreateTaskEventCopyWith<$Res> implements $MyTasksEventCopyWith<$Res> {
  factory _$CreateTaskEventCopyWith(_CreateTaskEvent value, $Res Function(_CreateTaskEvent) _then) = __$CreateTaskEventCopyWithImpl;
@useResult
$Res call({
 String title, int deskId
});




}
/// @nodoc
class __$CreateTaskEventCopyWithImpl<$Res>
    implements _$CreateTaskEventCopyWith<$Res> {
  __$CreateTaskEventCopyWithImpl(this._self, this._then);

  final _CreateTaskEvent _self;
  final $Res Function(_CreateTaskEvent) _then;

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? deskId = null,}) {
  return _then(_CreateTaskEvent(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _RemoveTaskEvent implements MyTasksEvent {
  const _RemoveTaskEvent(this.taskId, this.deskId);
  

 final  int taskId;
 final  int deskId;

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveTaskEventCopyWith<_RemoveTaskEvent> get copyWith => __$RemoveTaskEventCopyWithImpl<_RemoveTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveTaskEvent&&(identical(other.taskId, taskId) || other.taskId == taskId)&&(identical(other.deskId, deskId) || other.deskId == deskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId,deskId);

@override
String toString() {
  return 'MyTasksEvent.removeTask(taskId: $taskId, deskId: $deskId)';
}


}

/// @nodoc
abstract mixin class _$RemoveTaskEventCopyWith<$Res> implements $MyTasksEventCopyWith<$Res> {
  factory _$RemoveTaskEventCopyWith(_RemoveTaskEvent value, $Res Function(_RemoveTaskEvent) _then) = __$RemoveTaskEventCopyWithImpl;
@useResult
$Res call({
 int taskId, int deskId
});




}
/// @nodoc
class __$RemoveTaskEventCopyWithImpl<$Res>
    implements _$RemoveTaskEventCopyWith<$Res> {
  __$RemoveTaskEventCopyWithImpl(this._self, this._then);

  final _RemoveTaskEvent _self;
  final $Res Function(_RemoveTaskEvent) _then;

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,Object? deskId = null,}) {
  return _then(_RemoveTaskEvent(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as int,null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _PrayEvent implements MyTasksEvent {
  const _PrayEvent(this.task);
  

 final  TaskModel task;

/// Create a copy of MyTasksEvent
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
  return 'MyTasksEvent.pray(task: $task)';
}


}

/// @nodoc
abstract mixin class _$PrayEventCopyWith<$Res> implements $MyTasksEventCopyWith<$Res> {
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

/// Create a copy of MyTasksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = freezed,}) {
  return _then(_PrayEvent(
freezed == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskModel,
  ));
}


}

/// @nodoc
mixin _$MyTasksState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyTasksState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTasksState()';
}


}

/// @nodoc
class $MyTasksStateCopyWith<$Res>  {
$MyTasksStateCopyWith(MyTasksState _, $Res Function(MyTasksState) __);
}


/// Adds pattern-matching-related methods to [MyTasksState].
extension MyTasksStatePatterns on MyTasksState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<TaskModel> tasks)?  loaded,TResult Function( String message)?  error,TResult Function()?  empty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.tasks);case _ErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<TaskModel> tasks)  loaded,required TResult Function( String message)  error,required TResult Function()  empty,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.tasks);case _ErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<TaskModel> tasks)?  loaded,TResult? Function( String message)?  error,TResult? Function()?  empty,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.tasks);case _ErrorState() when error != null:
return error(_that.message);case _EmptyState() when empty != null:
return empty();case _:
  return null;

}
}

}

/// @nodoc


class _LoadingState implements MyTasksState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTasksState.loading()';
}


}




/// @nodoc


class _LoadedState implements MyTasksState {
  const _LoadedState(final  List<TaskModel> tasks): _tasks = tasks;
  

 final  List<TaskModel> _tasks;
 List<TaskModel> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of MyTasksState
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
  return 'MyTasksState.loaded(tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $MyTasksStateCopyWith<$Res> {
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

/// Create a copy of MyTasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tasks = null,}) {
  return _then(_LoadedState(
null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,
  ));
}


}

/// @nodoc


class _ErrorState implements MyTasksState {
  const _ErrorState(this.message);
  

 final  String message;

/// Create a copy of MyTasksState
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
  return 'MyTasksState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $MyTasksStateCopyWith<$Res> {
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

/// Create a copy of MyTasksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EmptyState implements MyTasksState {
  const _EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyTasksState.empty()';
}


}




// dart format on
