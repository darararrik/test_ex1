// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_desks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserDesksEvent {

 int get userId;
/// Create a copy of UserDesksEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDesksEventCopyWith<UserDesksEvent> get copyWith => _$UserDesksEventCopyWithImpl<UserDesksEvent>(this as UserDesksEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDesksEvent&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'UserDesksEvent(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $UserDesksEventCopyWith<$Res>  {
  factory $UserDesksEventCopyWith(UserDesksEvent value, $Res Function(UserDesksEvent) _then) = _$UserDesksEventCopyWithImpl;
@useResult
$Res call({
 int userId
});




}
/// @nodoc
class _$UserDesksEventCopyWithImpl<$Res>
    implements $UserDesksEventCopyWith<$Res> {
  _$UserDesksEventCopyWithImpl(this._self, this._then);

  final UserDesksEvent _self;
  final $Res Function(UserDesksEvent) _then;

/// Create a copy of UserDesksEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserDesksEvent].
extension UserDesksEventPatterns on UserDesksEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetDesksByUserIdEvent value)?  getDesksByUserId,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDesksByUserIdEvent() when getDesksByUserId != null:
return getDesksByUserId(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetDesksByUserIdEvent value)  getDesksByUserId,}){
final _that = this;
switch (_that) {
case _GetDesksByUserIdEvent():
return getDesksByUserId(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetDesksByUserIdEvent value)?  getDesksByUserId,}){
final _that = this;
switch (_that) {
case _GetDesksByUserIdEvent() when getDesksByUserId != null:
return getDesksByUserId(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int userId)?  getDesksByUserId,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDesksByUserIdEvent() when getDesksByUserId != null:
return getDesksByUserId(_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int userId)  getDesksByUserId,}) {final _that = this;
switch (_that) {
case _GetDesksByUserIdEvent():
return getDesksByUserId(_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int userId)?  getDesksByUserId,}) {final _that = this;
switch (_that) {
case _GetDesksByUserIdEvent() when getDesksByUserId != null:
return getDesksByUserId(_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _GetDesksByUserIdEvent implements UserDesksEvent {
  const _GetDesksByUserIdEvent(this.userId);
  

@override final  int userId;

/// Create a copy of UserDesksEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
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
  return 'UserDesksEvent.getDesksByUserId(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$GetDesksByUserIdEventCopyWith<$Res> implements $UserDesksEventCopyWith<$Res> {
  factory _$GetDesksByUserIdEventCopyWith(_GetDesksByUserIdEvent value, $Res Function(_GetDesksByUserIdEvent) _then) = __$GetDesksByUserIdEventCopyWithImpl;
@override @useResult
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

/// Create a copy of UserDesksEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_GetDesksByUserIdEvent(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$UserDesksState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDesksState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserDesksState()';
}


}

/// @nodoc
class $UserDesksStateCopyWith<$Res>  {
$UserDesksStateCopyWith(UserDesksState _, $Res Function(UserDesksState) __);
}


/// Adds pattern-matching-related methods to [UserDesksState].
extension UserDesksStatePatterns on UserDesksState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  empty,TResult Function()?  loading,TResult Function( List<DeskModel> desks)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.desks);case _ErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  empty,required TResult Function()  loading,required TResult Function( List<DeskModel> desks)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _EmptyState():
return empty();case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.desks);case _ErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  empty,TResult? Function()?  loading,TResult? Function( List<DeskModel> desks)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _EmptyState() when empty != null:
return empty();case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.desks);case _ErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _EmptyState implements UserDesksState {
  const _EmptyState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmptyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserDesksState.empty()';
}


}




/// @nodoc


class _LoadingState implements UserDesksState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserDesksState.loading()';
}


}




/// @nodoc


class _LoadedState implements UserDesksState {
  const _LoadedState(final  List<DeskModel> desks): _desks = desks;
  

 final  List<DeskModel> _desks;
 List<DeskModel> get desks {
  if (_desks is EqualUnmodifiableListView) return _desks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_desks);
}


/// Create a copy of UserDesksState
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
  return 'UserDesksState.loaded(desks: $desks)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $UserDesksStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 List<DeskModel> desks
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of UserDesksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? desks = null,}) {
  return _then(_LoadedState(
null == desks ? _self._desks : desks // ignore: cast_nullable_to_non_nullable
as List<DeskModel>,
  ));
}


}

/// @nodoc


class _ErrorState implements UserDesksState {
  const _ErrorState(this.message);
  

 final  String message;

/// Create a copy of UserDesksState
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
  return 'UserDesksState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $UserDesksStateCopyWith<$Res> {
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

/// Create a copy of UserDesksState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
