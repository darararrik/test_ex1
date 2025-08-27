// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentsDTO {

@DateTimeConverter() DateTime get createdAt; int get id; String get body; int get prayerId; int get userId;
/// Create a copy of CommentsDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentsDTOCopyWith<CommentsDTO> get copyWith => _$CommentsDTOCopyWithImpl<CommentsDTO>(this as CommentsDTO, _$identity);

  /// Serializes this CommentsDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsDTO&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.body, body) || other.body == body)&&(identical(other.prayerId, prayerId) || other.prayerId == prayerId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,id,body,prayerId,userId);

@override
String toString() {
  return 'CommentsDTO(createdAt: $createdAt, id: $id, body: $body, prayerId: $prayerId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $CommentsDTOCopyWith<$Res>  {
  factory $CommentsDTOCopyWith(CommentsDTO value, $Res Function(CommentsDTO) _then) = _$CommentsDTOCopyWithImpl;
@useResult
$Res call({
@DateTimeConverter() DateTime createdAt, int id, String body, int prayerId, int userId
});




}
/// @nodoc
class _$CommentsDTOCopyWithImpl<$Res>
    implements $CommentsDTOCopyWith<$Res> {
  _$CommentsDTOCopyWithImpl(this._self, this._then);

  final CommentsDTO _self;
  final $Res Function(CommentsDTO) _then;

/// Create a copy of CommentsDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? id = null,Object? body = null,Object? prayerId = null,Object? userId = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,prayerId: null == prayerId ? _self.prayerId : prayerId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentsDTO].
extension CommentsDTOPatterns on CommentsDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentsDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentsDTO() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentsDTO value)  $default,){
final _that = this;
switch (_that) {
case _CommentsDTO():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentsDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CommentsDTO() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@DateTimeConverter()  DateTime createdAt,  int id,  String body,  int prayerId,  int userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentsDTO() when $default != null:
return $default(_that.createdAt,_that.id,_that.body,_that.prayerId,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@DateTimeConverter()  DateTime createdAt,  int id,  String body,  int prayerId,  int userId)  $default,) {final _that = this;
switch (_that) {
case _CommentsDTO():
return $default(_that.createdAt,_that.id,_that.body,_that.prayerId,_that.userId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@DateTimeConverter()  DateTime createdAt,  int id,  String body,  int prayerId,  int userId)?  $default,) {final _that = this;
switch (_that) {
case _CommentsDTO() when $default != null:
return $default(_that.createdAt,_that.id,_that.body,_that.prayerId,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentsDTO implements CommentsDTO {
   _CommentsDTO({@DateTimeConverter() required this.createdAt, required this.id, required this.body, required this.prayerId, required this.userId});
  factory _CommentsDTO.fromJson(Map<String, dynamic> json) => _$CommentsDTOFromJson(json);

@override@DateTimeConverter() final  DateTime createdAt;
@override final  int id;
@override final  String body;
@override final  int prayerId;
@override final  int userId;

/// Create a copy of CommentsDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentsDTOCopyWith<_CommentsDTO> get copyWith => __$CommentsDTOCopyWithImpl<_CommentsDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentsDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentsDTO&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.body, body) || other.body == body)&&(identical(other.prayerId, prayerId) || other.prayerId == prayerId)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,id,body,prayerId,userId);

@override
String toString() {
  return 'CommentsDTO(createdAt: $createdAt, id: $id, body: $body, prayerId: $prayerId, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$CommentsDTOCopyWith<$Res> implements $CommentsDTOCopyWith<$Res> {
  factory _$CommentsDTOCopyWith(_CommentsDTO value, $Res Function(_CommentsDTO) _then) = __$CommentsDTOCopyWithImpl;
@override @useResult
$Res call({
@DateTimeConverter() DateTime createdAt, int id, String body, int prayerId, int userId
});




}
/// @nodoc
class __$CommentsDTOCopyWithImpl<$Res>
    implements _$CommentsDTOCopyWith<$Res> {
  __$CommentsDTOCopyWithImpl(this._self, this._then);

  final _CommentsDTO _self;
  final $Res Function(_CommentsDTO) _then;

/// Create a copy of CommentsDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? id = null,Object? body = null,Object? prayerId = null,Object? userId = null,}) {
  return _then(_CommentsDTO(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,prayerId: null == prayerId ? _self.prayerId : prayerId // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
