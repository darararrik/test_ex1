// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_desks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyDesksEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyDesksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyDesksEvent()';
}


}

/// @nodoc
class $MyDesksEventCopyWith<$Res>  {
$MyDesksEventCopyWith(MyDesksEvent _, $Res Function(MyDesksEvent) __);
}


/// Adds pattern-matching-related methods to [MyDesksEvent].
extension MyDesksEventPatterns on MyDesksEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetMyColumnsEvent value)?  getMyColumns,TResult Function( _RenameColumnEvent value)?  renameColumn,TResult Function( _CreateColumnEvent value)?  createColumn,TResult Function( _DeleteColumnEvent value)?  removeColumn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyColumnsEvent() when getMyColumns != null:
return getMyColumns(_that);case _RenameColumnEvent() when renameColumn != null:
return renameColumn(_that);case _CreateColumnEvent() when createColumn != null:
return createColumn(_that);case _DeleteColumnEvent() when removeColumn != null:
return removeColumn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetMyColumnsEvent value)  getMyColumns,required TResult Function( _RenameColumnEvent value)  renameColumn,required TResult Function( _CreateColumnEvent value)  createColumn,required TResult Function( _DeleteColumnEvent value)  removeColumn,}){
final _that = this;
switch (_that) {
case _GetMyColumnsEvent():
return getMyColumns(_that);case _RenameColumnEvent():
return renameColumn(_that);case _CreateColumnEvent():
return createColumn(_that);case _DeleteColumnEvent():
return removeColumn(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetMyColumnsEvent value)?  getMyColumns,TResult? Function( _RenameColumnEvent value)?  renameColumn,TResult? Function( _CreateColumnEvent value)?  createColumn,TResult? Function( _DeleteColumnEvent value)?  removeColumn,}){
final _that = this;
switch (_that) {
case _GetMyColumnsEvent() when getMyColumns != null:
return getMyColumns(_that);case _RenameColumnEvent() when renameColumn != null:
return renameColumn(_that);case _CreateColumnEvent() when createColumn != null:
return createColumn(_that);case _DeleteColumnEvent() when removeColumn != null:
return removeColumn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getMyColumns,TResult Function( int id,  String newName)?  renameColumn,TResult Function( String title)?  createColumn,TResult Function( int id)?  removeColumn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMyColumnsEvent() when getMyColumns != null:
return getMyColumns();case _RenameColumnEvent() when renameColumn != null:
return renameColumn(_that.id,_that.newName);case _CreateColumnEvent() when createColumn != null:
return createColumn(_that.title);case _DeleteColumnEvent() when removeColumn != null:
return removeColumn(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getMyColumns,required TResult Function( int id,  String newName)  renameColumn,required TResult Function( String title)  createColumn,required TResult Function( int id)  removeColumn,}) {final _that = this;
switch (_that) {
case _GetMyColumnsEvent():
return getMyColumns();case _RenameColumnEvent():
return renameColumn(_that.id,_that.newName);case _CreateColumnEvent():
return createColumn(_that.title);case _DeleteColumnEvent():
return removeColumn(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getMyColumns,TResult? Function( int id,  String newName)?  renameColumn,TResult? Function( String title)?  createColumn,TResult? Function( int id)?  removeColumn,}) {final _that = this;
switch (_that) {
case _GetMyColumnsEvent() when getMyColumns != null:
return getMyColumns();case _RenameColumnEvent() when renameColumn != null:
return renameColumn(_that.id,_that.newName);case _CreateColumnEvent() when createColumn != null:
return createColumn(_that.title);case _DeleteColumnEvent() when removeColumn != null:
return removeColumn(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetMyColumnsEvent implements MyDesksEvent {
  const _GetMyColumnsEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyColumnsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyDesksEvent.getMyColumns()';
}


}




/// @nodoc


class _RenameColumnEvent implements MyDesksEvent {
  const _RenameColumnEvent({required this.id, required this.newName});
  

 final  int id;
 final  String newName;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RenameColumnEventCopyWith<_RenameColumnEvent> get copyWith => __$RenameColumnEventCopyWithImpl<_RenameColumnEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RenameColumnEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.newName, newName) || other.newName == newName));
}


@override
int get hashCode => Object.hash(runtimeType,id,newName);

@override
String toString() {
  return 'MyDesksEvent.renameColumn(id: $id, newName: $newName)';
}


}

/// @nodoc
abstract mixin class _$RenameColumnEventCopyWith<$Res> implements $MyDesksEventCopyWith<$Res> {
  factory _$RenameColumnEventCopyWith(_RenameColumnEvent value, $Res Function(_RenameColumnEvent) _then) = __$RenameColumnEventCopyWithImpl;
@useResult
$Res call({
 int id, String newName
});




}
/// @nodoc
class __$RenameColumnEventCopyWithImpl<$Res>
    implements _$RenameColumnEventCopyWith<$Res> {
  __$RenameColumnEventCopyWithImpl(this._self, this._then);

  final _RenameColumnEvent _self;
  final $Res Function(_RenameColumnEvent) _then;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? newName = null,}) {
  return _then(_RenameColumnEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,newName: null == newName ? _self.newName : newName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreateColumnEvent implements MyDesksEvent {
  const _CreateColumnEvent({required this.title});
  

 final  String title;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateColumnEventCopyWith<_CreateColumnEvent> get copyWith => __$CreateColumnEventCopyWithImpl<_CreateColumnEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateColumnEvent&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'MyDesksEvent.createColumn(title: $title)';
}


}

/// @nodoc
abstract mixin class _$CreateColumnEventCopyWith<$Res> implements $MyDesksEventCopyWith<$Res> {
  factory _$CreateColumnEventCopyWith(_CreateColumnEvent value, $Res Function(_CreateColumnEvent) _then) = __$CreateColumnEventCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$CreateColumnEventCopyWithImpl<$Res>
    implements _$CreateColumnEventCopyWith<$Res> {
  __$CreateColumnEventCopyWithImpl(this._self, this._then);

  final _CreateColumnEvent _self;
  final $Res Function(_CreateColumnEvent) _then;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_CreateColumnEvent(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DeleteColumnEvent implements MyDesksEvent {
  const _DeleteColumnEvent({required this.id});
  

 final  int id;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteColumnEventCopyWith<_DeleteColumnEvent> get copyWith => __$DeleteColumnEventCopyWithImpl<_DeleteColumnEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteColumnEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MyDesksEvent.removeColumn(id: $id)';
}


}

/// @nodoc
abstract mixin class _$DeleteColumnEventCopyWith<$Res> implements $MyDesksEventCopyWith<$Res> {
  factory _$DeleteColumnEventCopyWith(_DeleteColumnEvent value, $Res Function(_DeleteColumnEvent) _then) = __$DeleteColumnEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$DeleteColumnEventCopyWithImpl<$Res>
    implements _$DeleteColumnEventCopyWith<$Res> {
  __$DeleteColumnEventCopyWithImpl(this._self, this._then);

  final _DeleteColumnEvent _self;
  final $Res Function(_DeleteColumnEvent) _then;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_DeleteColumnEvent(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$MyDesksState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyDesksState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyDesksState()';
}


}

/// @nodoc
class $MyDesksStateCopyWith<$Res>  {
$MyDesksStateCopyWith(MyDesksState _, $Res Function(MyDesksState) __);
}


/// Adds pattern-matching-related methods to [MyDesksState].
extension MyDesksStatePatterns on MyDesksState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoadingState value)?  loading,TResult Function( _LoadedState value)?  loaded,TResult Function( _EmptyState value)?  empty,TResult Function( _ErrorState value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _EmptyState() when empty != null:
return empty(_that);case _ErrorState() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoadingState value)  loading,required TResult Function( _LoadedState value)  loaded,required TResult Function( _EmptyState value)  empty,required TResult Function( _ErrorState value)  error,}){
final _that = this;
switch (_that) {
case _LoadingState():
return loading(_that);case _LoadedState():
return loaded(_that);case _EmptyState():
return empty(_that);case _ErrorState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoadingState value)?  loading,TResult? Function( _LoadedState value)?  loaded,TResult? Function( _EmptyState value)?  empty,TResult? Function( _ErrorState value)?  error,}){
final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading(_that);case _LoadedState() when loaded != null:
return loaded(_that);case _EmptyState() when empty != null:
return empty(_that);case _ErrorState() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<ColumnModel> columns)?  loaded,TResult Function()?  empty,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.columns);case _EmptyState() when empty != null:
return empty();case _ErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<ColumnModel> columns)  loaded,required TResult Function()  empty,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.columns);case _EmptyState():
return empty();case _ErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<ColumnModel> columns)?  loaded,TResult? Function()?  empty,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.columns);case _EmptyState() when empty != null:
return empty();case _ErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingState implements MyDesksState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyDesksState.loading()';
}


}




/// @nodoc


class _LoadedState implements MyDesksState {
  const _LoadedState({required final  List<ColumnModel> columns}): _columns = columns;
  

 final  List<ColumnModel> _columns;
 List<ColumnModel> get columns {
  if (_columns is EqualUnmodifiableListView) return _columns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_columns);
}


/// Create a copy of MyDesksState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedStateCopyWith<_LoadedState> get copyWith => __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedState&&const DeepCollectionEquality().equals(other._columns, _columns));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_columns));

@override
String toString() {
  return 'MyDesksState.loaded(columns: $columns)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $MyDesksStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 List<ColumnModel> columns
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of MyDesksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? columns = null,}) {
  return _then(_LoadedState(
columns: null == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<ColumnModel>,
  ));
}


}

/// @nodoc


class _EmptyState implements MyDesksState {
  const _EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyDesksState.empty()';
}


}




/// @nodoc


class _ErrorState implements MyDesksState {
  const _ErrorState({required this.message});
  

 final  String message;

/// Create a copy of MyDesksState
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
  return 'MyDesksState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $MyDesksStateCopyWith<$Res> {
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

/// Create a copy of MyDesksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
