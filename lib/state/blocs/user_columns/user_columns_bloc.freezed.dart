// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_columns_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserColumnsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserColumnsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserColumnsEvent()';
}


}

/// @nodoc
class $UserColumnsEventCopyWith<$Res>  {
$UserColumnsEventCopyWith(UserColumnsEvent _, $Res Function(UserColumnsEvent) __);
}


/// Adds pattern-matching-related methods to [UserColumnsEvent].
extension UserColumnsEventPatterns on UserColumnsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetUserColumnsEvent value)?  getUserColumns,TResult Function( _LoadMoreEvent value)?  loadMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserColumnsEvent() when getUserColumns != null:
return getUserColumns(_that);case _LoadMoreEvent() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetUserColumnsEvent value)  getUserColumns,required TResult Function( _LoadMoreEvent value)  loadMore,}){
final _that = this;
switch (_that) {
case _GetUserColumnsEvent():
return getUserColumns(_that);case _LoadMoreEvent():
return loadMore(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetUserColumnsEvent value)?  getUserColumns,TResult? Function( _LoadMoreEvent value)?  loadMore,}){
final _that = this;
switch (_that) {
case _GetUserColumnsEvent() when getUserColumns != null:
return getUserColumns(_that);case _LoadMoreEvent() when loadMore != null:
return loadMore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int deskId)?  getUserColumns,TResult Function()?  loadMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserColumnsEvent() when getUserColumns != null:
return getUserColumns(_that.deskId);case _LoadMoreEvent() when loadMore != null:
return loadMore();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int deskId)  getUserColumns,required TResult Function()  loadMore,}) {final _that = this;
switch (_that) {
case _GetUserColumnsEvent():
return getUserColumns(_that.deskId);case _LoadMoreEvent():
return loadMore();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int deskId)?  getUserColumns,TResult? Function()?  loadMore,}) {final _that = this;
switch (_that) {
case _GetUserColumnsEvent() when getUserColumns != null:
return getUserColumns(_that.deskId);case _LoadMoreEvent() when loadMore != null:
return loadMore();case _:
  return null;

}
}

}

/// @nodoc


class _GetUserColumnsEvent implements UserColumnsEvent {
  const _GetUserColumnsEvent({required this.deskId});
  

 final  int deskId;

/// Create a copy of UserColumnsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserColumnsEventCopyWith<_GetUserColumnsEvent> get copyWith => __$GetUserColumnsEventCopyWithImpl<_GetUserColumnsEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserColumnsEvent&&(identical(other.deskId, deskId) || other.deskId == deskId));
}


@override
int get hashCode => Object.hash(runtimeType,deskId);

@override
String toString() {
  return 'UserColumnsEvent.getUserColumns(deskId: $deskId)';
}


}

/// @nodoc
abstract mixin class _$GetUserColumnsEventCopyWith<$Res> implements $UserColumnsEventCopyWith<$Res> {
  factory _$GetUserColumnsEventCopyWith(_GetUserColumnsEvent value, $Res Function(_GetUserColumnsEvent) _then) = __$GetUserColumnsEventCopyWithImpl;
@useResult
$Res call({
 int deskId
});




}
/// @nodoc
class __$GetUserColumnsEventCopyWithImpl<$Res>
    implements _$GetUserColumnsEventCopyWith<$Res> {
  __$GetUserColumnsEventCopyWithImpl(this._self, this._then);

  final _GetUserColumnsEvent _self;
  final $Res Function(_GetUserColumnsEvent) _then;

/// Create a copy of UserColumnsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deskId = null,}) {
  return _then(_GetUserColumnsEvent(
deskId: null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _LoadMoreEvent implements UserColumnsEvent {
  const _LoadMoreEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadMoreEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserColumnsEvent.loadMore()';
}


}




/// @nodoc
mixin _$UserColumnsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserColumnsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserColumnsState()';
}


}

/// @nodoc
class $UserColumnsStateCopyWith<$Res>  {
$UserColumnsStateCopyWith(UserColumnsState _, $Res Function(UserColumnsState) __);
}


/// Adds pattern-matching-related methods to [UserColumnsState].
extension UserColumnsStatePatterns on UserColumnsState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function()?  loading,TResult Function( List<ColumnModel> columns,  String? afterCursor,  bool isLoadingMore,  bool hasMore)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.columns,_that.afterCursor,_that.isLoadingMore,_that.hasMore);case _ErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function()  loading,required TResult Function( List<ColumnModel> columns,  String? afterCursor,  bool isLoadingMore,  bool hasMore)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _EmptyState():
return empty();case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.columns,_that.afterCursor,_that.isLoadingMore,_that.hasMore);case _ErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function()?  loading,TResult? Function( List<ColumnModel> columns,  String? afterCursor,  bool isLoadingMore,  bool hasMore)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.columns,_that.afterCursor,_that.isLoadingMore,_that.hasMore);case _ErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _EmptyState implements UserColumnsState {
  const _EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserColumnsState.empty()';
}


}




/// @nodoc


class _LoadingState implements UserColumnsState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserColumnsState.loading()';
}


}




/// @nodoc


class _LoadedState implements UserColumnsState {
  const _LoadedState({required final  List<ColumnModel> columns, required this.afterCursor, this.isLoadingMore = false, this.hasMore = true}): _columns = columns;
  

 final  List<ColumnModel> _columns;
 List<ColumnModel> get columns {
  if (_columns is EqualUnmodifiableListView) return _columns;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_columns);
}

 final  String? afterCursor;
@JsonKey() final  bool isLoadingMore;
@JsonKey() final  bool hasMore;

/// Create a copy of UserColumnsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedStateCopyWith<_LoadedState> get copyWith => __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedState&&const DeepCollectionEquality().equals(other._columns, _columns)&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_columns),afterCursor,isLoadingMore,hasMore);

@override
String toString() {
  return 'UserColumnsState.loaded(columns: $columns, afterCursor: $afterCursor, isLoadingMore: $isLoadingMore, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $UserColumnsStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 List<ColumnModel> columns, String? afterCursor, bool isLoadingMore, bool hasMore
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of UserColumnsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? columns = null,Object? afterCursor = freezed,Object? isLoadingMore = null,Object? hasMore = null,}) {
  return _then(_LoadedState(
columns: null == columns ? _self._columns : columns // ignore: cast_nullable_to_non_nullable
as List<ColumnModel>,afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _ErrorState implements UserColumnsState {
  const _ErrorState({required this.message});
  

 final  String message;

/// Create a copy of UserColumnsState
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
  return 'UserColumnsState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $UserColumnsStateCopyWith<$Res> {
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

/// Create a copy of UserColumnsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
