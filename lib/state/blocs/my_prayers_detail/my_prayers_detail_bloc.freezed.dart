// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_prayers_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyPrayersDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPrayersDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPrayersDetailEvent()';
}


}

/// @nodoc
class $MyPrayersDetailEventCopyWith<$Res>  {
$MyPrayersDetailEventCopyWith(MyPrayersDetailEvent _, $Res Function(MyPrayersDetailEvent) __);
}


/// Adds pattern-matching-related methods to [MyPrayersDetailEvent].
extension MyPrayersDetailEventPatterns on MyPrayersDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetPrayerByIdEvent value)?  getTaskById,TResult Function( _CreateCommentEvent value)?  createComment,TResult Function( _PrayEvent value)?  pray,TResult Function( _SubscribeEvent value)?  subscribe,TResult Function( _UnsubscribeEvent value)?  unsubscribe,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetPrayerByIdEvent() when getTaskById != null:
return getTaskById(_that);case _CreateCommentEvent() when createComment != null:
return createComment(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetPrayerByIdEvent value)  getTaskById,required TResult Function( _CreateCommentEvent value)  createComment,required TResult Function( _PrayEvent value)  pray,required TResult Function( _SubscribeEvent value)  subscribe,required TResult Function( _UnsubscribeEvent value)  unsubscribe,}){
final _that = this;
switch (_that) {
case _GetPrayerByIdEvent():
return getTaskById(_that);case _CreateCommentEvent():
return createComment(_that);case _PrayEvent():
return pray(_that);case _SubscribeEvent():
return subscribe(_that);case _UnsubscribeEvent():
return unsubscribe(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetPrayerByIdEvent value)?  getTaskById,TResult? Function( _CreateCommentEvent value)?  createComment,TResult? Function( _PrayEvent value)?  pray,TResult? Function( _SubscribeEvent value)?  subscribe,TResult? Function( _UnsubscribeEvent value)?  unsubscribe,}){
final _that = this;
switch (_that) {
case _GetPrayerByIdEvent() when getTaskById != null:
return getTaskById(_that);case _CreateCommentEvent() when createComment != null:
return createComment(_that);case _PrayEvent() when pray != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int prayerId)?  getTaskById,TResult Function( int prayerId,  String body)?  createComment,TResult Function( PrayerModel prayer)?  pray,TResult Function( PrayerModel prayer)?  subscribe,TResult Function( PrayerModel prayer)?  unsubscribe,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetPrayerByIdEvent() when getTaskById != null:
return getTaskById(_that.prayerId);case _CreateCommentEvent() when createComment != null:
return createComment(_that.prayerId,_that.body);case _PrayEvent() when pray != null:
return pray(_that.prayer);case _SubscribeEvent() when subscribe != null:
return subscribe(_that.prayer);case _UnsubscribeEvent() when unsubscribe != null:
return unsubscribe(_that.prayer);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int prayerId)  getTaskById,required TResult Function( int prayerId,  String body)  createComment,required TResult Function( PrayerModel prayer)  pray,required TResult Function( PrayerModel prayer)  subscribe,required TResult Function( PrayerModel prayer)  unsubscribe,}) {final _that = this;
switch (_that) {
case _GetPrayerByIdEvent():
return getTaskById(_that.prayerId);case _CreateCommentEvent():
return createComment(_that.prayerId,_that.body);case _PrayEvent():
return pray(_that.prayer);case _SubscribeEvent():
return subscribe(_that.prayer);case _UnsubscribeEvent():
return unsubscribe(_that.prayer);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int prayerId)?  getTaskById,TResult? Function( int prayerId,  String body)?  createComment,TResult? Function( PrayerModel prayer)?  pray,TResult? Function( PrayerModel prayer)?  subscribe,TResult? Function( PrayerModel prayer)?  unsubscribe,}) {final _that = this;
switch (_that) {
case _GetPrayerByIdEvent() when getTaskById != null:
return getTaskById(_that.prayerId);case _CreateCommentEvent() when createComment != null:
return createComment(_that.prayerId,_that.body);case _PrayEvent() when pray != null:
return pray(_that.prayer);case _SubscribeEvent() when subscribe != null:
return subscribe(_that.prayer);case _UnsubscribeEvent() when unsubscribe != null:
return unsubscribe(_that.prayer);case _:
  return null;

}
}

}

/// @nodoc


class _GetPrayerByIdEvent implements MyPrayersDetailEvent {
  const _GetPrayerByIdEvent({required this.prayerId});
  

 final  int prayerId;

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetPrayerByIdEventCopyWith<_GetPrayerByIdEvent> get copyWith => __$GetPrayerByIdEventCopyWithImpl<_GetPrayerByIdEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetPrayerByIdEvent&&(identical(other.prayerId, prayerId) || other.prayerId == prayerId));
}


@override
int get hashCode => Object.hash(runtimeType,prayerId);

@override
String toString() {
  return 'MyPrayersDetailEvent.getTaskById(prayerId: $prayerId)';
}


}

/// @nodoc
abstract mixin class _$GetPrayerByIdEventCopyWith<$Res> implements $MyPrayersDetailEventCopyWith<$Res> {
  factory _$GetPrayerByIdEventCopyWith(_GetPrayerByIdEvent value, $Res Function(_GetPrayerByIdEvent) _then) = __$GetPrayerByIdEventCopyWithImpl;
@useResult
$Res call({
 int prayerId
});




}
/// @nodoc
class __$GetPrayerByIdEventCopyWithImpl<$Res>
    implements _$GetPrayerByIdEventCopyWith<$Res> {
  __$GetPrayerByIdEventCopyWithImpl(this._self, this._then);

  final _GetPrayerByIdEvent _self;
  final $Res Function(_GetPrayerByIdEvent) _then;

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayerId = null,}) {
  return _then(_GetPrayerByIdEvent(
prayerId: null == prayerId ? _self.prayerId : prayerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class _CreateCommentEvent implements MyPrayersDetailEvent {
  const _CreateCommentEvent({required this.prayerId, required this.body});
  

 final  int prayerId;
 final  String body;

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateCommentEventCopyWith<_CreateCommentEvent> get copyWith => __$CreateCommentEventCopyWithImpl<_CreateCommentEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateCommentEvent&&(identical(other.prayerId, prayerId) || other.prayerId == prayerId)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,prayerId,body);

@override
String toString() {
  return 'MyPrayersDetailEvent.createComment(prayerId: $prayerId, body: $body)';
}


}

/// @nodoc
abstract mixin class _$CreateCommentEventCopyWith<$Res> implements $MyPrayersDetailEventCopyWith<$Res> {
  factory _$CreateCommentEventCopyWith(_CreateCommentEvent value, $Res Function(_CreateCommentEvent) _then) = __$CreateCommentEventCopyWithImpl;
@useResult
$Res call({
 int prayerId, String body
});




}
/// @nodoc
class __$CreateCommentEventCopyWithImpl<$Res>
    implements _$CreateCommentEventCopyWith<$Res> {
  __$CreateCommentEventCopyWithImpl(this._self, this._then);

  final _CreateCommentEvent _self;
  final $Res Function(_CreateCommentEvent) _then;

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayerId = null,Object? body = null,}) {
  return _then(_CreateCommentEvent(
prayerId: null == prayerId ? _self.prayerId : prayerId // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _PrayEvent implements MyPrayersDetailEvent {
  const _PrayEvent({required this.prayer});
  

 final  PrayerModel prayer;

/// Create a copy of MyPrayersDetailEvent
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
  return 'MyPrayersDetailEvent.pray(prayer: $prayer)';
}


}

/// @nodoc
abstract mixin class _$PrayEventCopyWith<$Res> implements $MyPrayersDetailEventCopyWith<$Res> {
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

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,}) {
  return _then(_PrayEvent(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,
  ));
}


}

/// @nodoc


class _SubscribeEvent implements MyPrayersDetailEvent {
  const _SubscribeEvent({required this.prayer});
  

 final  PrayerModel prayer;

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscribeEventCopyWith<_SubscribeEvent> get copyWith => __$SubscribeEventCopyWithImpl<_SubscribeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscribeEvent&&(identical(other.prayer, prayer) || other.prayer == prayer));
}


@override
int get hashCode => Object.hash(runtimeType,prayer);

@override
String toString() {
  return 'MyPrayersDetailEvent.subscribe(prayer: $prayer)';
}


}

/// @nodoc
abstract mixin class _$SubscribeEventCopyWith<$Res> implements $MyPrayersDetailEventCopyWith<$Res> {
  factory _$SubscribeEventCopyWith(_SubscribeEvent value, $Res Function(_SubscribeEvent) _then) = __$SubscribeEventCopyWithImpl;
@useResult
$Res call({
 PrayerModel prayer
});




}
/// @nodoc
class __$SubscribeEventCopyWithImpl<$Res>
    implements _$SubscribeEventCopyWith<$Res> {
  __$SubscribeEventCopyWithImpl(this._self, this._then);

  final _SubscribeEvent _self;
  final $Res Function(_SubscribeEvent) _then;

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,}) {
  return _then(_SubscribeEvent(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,
  ));
}


}

/// @nodoc


class _UnsubscribeEvent implements MyPrayersDetailEvent {
  const _UnsubscribeEvent({required this.prayer});
  

 final  PrayerModel prayer;

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnsubscribeEventCopyWith<_UnsubscribeEvent> get copyWith => __$UnsubscribeEventCopyWithImpl<_UnsubscribeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnsubscribeEvent&&(identical(other.prayer, prayer) || other.prayer == prayer));
}


@override
int get hashCode => Object.hash(runtimeType,prayer);

@override
String toString() {
  return 'MyPrayersDetailEvent.unsubscribe(prayer: $prayer)';
}


}

/// @nodoc
abstract mixin class _$UnsubscribeEventCopyWith<$Res> implements $MyPrayersDetailEventCopyWith<$Res> {
  factory _$UnsubscribeEventCopyWith(_UnsubscribeEvent value, $Res Function(_UnsubscribeEvent) _then) = __$UnsubscribeEventCopyWithImpl;
@useResult
$Res call({
 PrayerModel prayer
});




}
/// @nodoc
class __$UnsubscribeEventCopyWithImpl<$Res>
    implements _$UnsubscribeEventCopyWith<$Res> {
  __$UnsubscribeEventCopyWithImpl(this._self, this._then);

  final _UnsubscribeEvent _self;
  final $Res Function(_UnsubscribeEvent) _then;

/// Create a copy of MyPrayersDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,}) {
  return _then(_UnsubscribeEvent(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,
  ));
}


}

/// @nodoc
mixin _$MyPrayersDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyPrayersDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPrayersDetailState()';
}


}

/// @nodoc
class $MyPrayersDetailStateCopyWith<$Res>  {
$MyPrayersDetailStateCopyWith(MyPrayersDetailState _, $Res Function(MyPrayersDetailState) __);
}


/// Adds pattern-matching-related methods to [MyPrayersDetailState].
extension MyPrayersDetailStatePatterns on MyPrayersDetailState {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( PrayerModel prayer,  List<CommentModel> comments)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.prayer,_that.comments);case _ErrorState() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( PrayerModel prayer,  List<CommentModel> comments)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _LoadingState():
return loading();case _LoadedState():
return loaded(_that.prayer,_that.comments);case _ErrorState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( PrayerModel prayer,  List<CommentModel> comments)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _LoadingState() when loading != null:
return loading();case _LoadedState() when loaded != null:
return loaded(_that.prayer,_that.comments);case _ErrorState() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingState implements MyPrayersDetailState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MyPrayersDetailState.loading()';
}


}




/// @nodoc


class _LoadedState implements MyPrayersDetailState {
  const _LoadedState({required this.prayer, required final  List<CommentModel> comments}): _comments = comments;
  

 final  PrayerModel prayer;
 final  List<CommentModel> _comments;
 List<CommentModel> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}


/// Create a copy of MyPrayersDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedStateCopyWith<_LoadedState> get copyWith => __$LoadedStateCopyWithImpl<_LoadedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadedState&&(identical(other.prayer, prayer) || other.prayer == prayer)&&const DeepCollectionEquality().equals(other._comments, _comments));
}


@override
int get hashCode => Object.hash(runtimeType,prayer,const DeepCollectionEquality().hash(_comments));

@override
String toString() {
  return 'MyPrayersDetailState.loaded(prayer: $prayer, comments: $comments)';
}


}

/// @nodoc
abstract mixin class _$LoadedStateCopyWith<$Res> implements $MyPrayersDetailStateCopyWith<$Res> {
  factory _$LoadedStateCopyWith(_LoadedState value, $Res Function(_LoadedState) _then) = __$LoadedStateCopyWithImpl;
@useResult
$Res call({
 PrayerModel prayer, List<CommentModel> comments
});




}
/// @nodoc
class __$LoadedStateCopyWithImpl<$Res>
    implements _$LoadedStateCopyWith<$Res> {
  __$LoadedStateCopyWithImpl(this._self, this._then);

  final _LoadedState _self;
  final $Res Function(_LoadedState) _then;

/// Create a copy of MyPrayersDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? prayer = null,Object? comments = null,}) {
  return _then(_LoadedState(
prayer: null == prayer ? _self.prayer : prayer // ignore: cast_nullable_to_non_nullable
as PrayerModel,comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentModel>,
  ));
}


}

/// @nodoc


class _ErrorState implements MyPrayersDetailState {
  const _ErrorState(this.message);
  

 final  String message;

/// Create a copy of MyPrayersDetailState
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
  return 'MyPrayersDetailState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $MyPrayersDetailStateCopyWith<$Res> {
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

/// Create a copy of MyPrayersDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
