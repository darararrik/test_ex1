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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetMyDesksEvent value)?  getMyDesks,TResult Function( _RenameDeskEvent value)?  renameDesk,TResult Function( _CreateDeskEvent value)?  createDesk,TResult Function( _RemoveDeskEvent value)?  removeDesk,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetMyDesksEvent() when getMyDesks != null:
return getMyDesks(_that);case _RenameDeskEvent() when renameDesk != null:
return renameDesk(_that);case _CreateDeskEvent() when createDesk != null:
return createDesk(_that);case _RemoveDeskEvent() when removeDesk != null:
return removeDesk(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetMyDesksEvent value)  getMyDesks,required TResult Function( _RenameDeskEvent value)  renameDesk,required TResult Function( _CreateDeskEvent value)  createDesk,required TResult Function( _RemoveDeskEvent value)  removeDesk,}){
final _that = this;
switch (_that) {
case _GetMyDesksEvent():
return getMyDesks(_that);case _RenameDeskEvent():
return renameDesk(_that);case _CreateDeskEvent():
return createDesk(_that);case _RemoveDeskEvent():
return removeDesk(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetMyDesksEvent value)?  getMyDesks,TResult? Function( _RenameDeskEvent value)?  renameDesk,TResult? Function( _CreateDeskEvent value)?  createDesk,TResult? Function( _RemoveDeskEvent value)?  removeDesk,}){
final _that = this;
switch (_that) {
case _GetMyDesksEvent() when getMyDesks != null:
return getMyDesks(_that);case _RenameDeskEvent() when renameDesk != null:
return renameDesk(_that);case _CreateDeskEvent() when createDesk != null:
return createDesk(_that);case _RemoveDeskEvent() when removeDesk != null:
return removeDesk(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getMyDesks,TResult Function( int id,  String newName)?  renameDesk,TResult Function( String title)?  createDesk,TResult Function( int id)?  removeDesk,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetMyDesksEvent() when getMyDesks != null:
return getMyDesks();case _RenameDeskEvent() when renameDesk != null:
return renameDesk(_that.id,_that.newName);case _CreateDeskEvent() when createDesk != null:
return createDesk(_that.title);case _RemoveDeskEvent() when removeDesk != null:
return removeDesk(_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getMyDesks,required TResult Function( int id,  String newName)  renameDesk,required TResult Function( String title)  createDesk,required TResult Function( int id)  removeDesk,}) {final _that = this;
switch (_that) {
case _GetMyDesksEvent():
return getMyDesks();case _RenameDeskEvent():
return renameDesk(_that.id,_that.newName);case _CreateDeskEvent():
return createDesk(_that.title);case _RemoveDeskEvent():
return removeDesk(_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getMyDesks,TResult? Function( int id,  String newName)?  renameDesk,TResult? Function( String title)?  createDesk,TResult? Function( int id)?  removeDesk,}) {final _that = this;
switch (_that) {
case _GetMyDesksEvent() when getMyDesks != null:
return getMyDesks();case _RenameDeskEvent() when renameDesk != null:
return renameDesk(_that.id,_that.newName);case _CreateDeskEvent() when createDesk != null:
return createDesk(_that.title);case _RemoveDeskEvent() when removeDesk != null:
return removeDesk(_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _GetMyDesksEvent implements MyDesksEvent {
  const _GetMyDesksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetMyDesksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyDesksEvent.getMyDesks()';
}


}




/// @nodoc


class _RenameDeskEvent implements MyDesksEvent {
  const _RenameDeskEvent(this.id, this.newName);
  

 final  int id;
 final  String newName;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RenameDeskEventCopyWith<_RenameDeskEvent> get copyWith => __$RenameDeskEventCopyWithImpl<_RenameDeskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RenameDeskEvent&&(identical(other.id, id) || other.id == id)&&(identical(other.newName, newName) || other.newName == newName));
}


@override
int get hashCode => Object.hash(runtimeType,id,newName);

@override
String toString() {
  return 'MyDesksEvent.renameDesk(id: $id, newName: $newName)';
}


}

/// @nodoc
abstract mixin class _$RenameDeskEventCopyWith<$Res> implements $MyDesksEventCopyWith<$Res> {
  factory _$RenameDeskEventCopyWith(_RenameDeskEvent value, $Res Function(_RenameDeskEvent) _then) = __$RenameDeskEventCopyWithImpl;
@useResult
$Res call({
 int id, String newName
});




}
/// @nodoc
class __$RenameDeskEventCopyWithImpl<$Res>
    implements _$RenameDeskEventCopyWith<$Res> {
  __$RenameDeskEventCopyWithImpl(this._self, this._then);

  final _RenameDeskEvent _self;
  final $Res Function(_RenameDeskEvent) _then;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? newName = null,}) {
  return _then(_RenameDeskEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,null == newName ? _self.newName : newName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreateDeskEvent implements MyDesksEvent {
  const _CreateDeskEvent(this.title);
  

 final  String title;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateDeskEventCopyWith<_CreateDeskEvent> get copyWith => __$CreateDeskEventCopyWithImpl<_CreateDeskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateDeskEvent&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'MyDesksEvent.createDesk(title: $title)';
}


}

/// @nodoc
abstract mixin class _$CreateDeskEventCopyWith<$Res> implements $MyDesksEventCopyWith<$Res> {
  factory _$CreateDeskEventCopyWith(_CreateDeskEvent value, $Res Function(_CreateDeskEvent) _then) = __$CreateDeskEventCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$CreateDeskEventCopyWithImpl<$Res>
    implements _$CreateDeskEventCopyWith<$Res> {
  __$CreateDeskEventCopyWithImpl(this._self, this._then);

  final _CreateDeskEvent _self;
  final $Res Function(_CreateDeskEvent) _then;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_CreateDeskEvent(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RemoveDeskEvent implements MyDesksEvent {
  const _RemoveDeskEvent(this.id);
  

 final  int id;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveDeskEventCopyWith<_RemoveDeskEvent> get copyWith => __$RemoveDeskEventCopyWithImpl<_RemoveDeskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveDeskEvent&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'MyDesksEvent.removeDesk(id: $id)';
}


}

/// @nodoc
abstract mixin class _$RemoveDeskEventCopyWith<$Res> implements $MyDesksEventCopyWith<$Res> {
  factory _$RemoveDeskEventCopyWith(_RemoveDeskEvent value, $Res Function(_RemoveDeskEvent) _then) = __$RemoveDeskEventCopyWithImpl;
@useResult
$Res call({
 int id
});




}
/// @nodoc
class __$RemoveDeskEventCopyWithImpl<$Res>
    implements _$RemoveDeskEventCopyWith<$Res> {
  __$RemoveDeskEventCopyWithImpl(this._self, this._then);

  final _RemoveDeskEvent _self;
  final $Res Function(_RemoveDeskEvent) _then;

/// Create a copy of MyDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_RemoveDeskEvent(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<DesksModel> desks)?  loaded,TResult Function()?  empty,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.desks);case _EmptyState() when empty != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<DesksModel> desks)  loaded,required TResult Function()  empty,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.desks);case _EmptyState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<DesksModel> desks)?  loaded,TResult? Function()?  empty,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.desks);case _EmptyState() when empty != null:
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
  const _LoadedState(final  List<DesksModel> desks): _desks = desks;
  

 final  List<DesksModel> _desks;
 List<DesksModel> get desks {
  if (_desks is EqualUnmodifiableListView) return _desks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_desks);
}


/// Create a copy of MyDesksState
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
  return 'MyDesksState.loaded(desks: $desks)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $MyDesksStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 List<DesksModel> desks
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
@pragma('vm:prefer-inline') $Res call({Object? desks = null,}) {
  return _then(_LoadedState(
null == desks ? _self._desks : desks // ignore: cast_nullable_to_non_nullable
as List<DesksModel>,
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
  const _ErrorState(this.message);
  

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
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
