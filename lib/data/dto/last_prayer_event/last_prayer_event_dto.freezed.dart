// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_prayer_event_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LastPrayerEventDTO {

@DateTimeConverter() DateTime get createdAt;@DateTimeConverter() DateTime get updatedAt;@DateTimeConverter() DateTime? get deletedAt; int get id; int get userId; int get prayerId;
/// Create a copy of LastPrayerEventDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LastPrayerEventDTOCopyWith<LastPrayerEventDTO> get copyWith => _$LastPrayerEventDTOCopyWithImpl<LastPrayerEventDTO>(this as LastPrayerEventDTO, _$identity);

  /// Serializes this LastPrayerEventDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LastPrayerEventDTO&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.prayerId, prayerId) || other.prayerId == prayerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,deletedAt,id,userId,prayerId);

@override
String toString() {
  return 'LastPrayerEventDTO(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, id: $id, userId: $userId, prayerId: $prayerId)';
}


}

/// @nodoc
abstract mixin class $LastPrayerEventDTOCopyWith<$Res>  {
  factory $LastPrayerEventDTOCopyWith(LastPrayerEventDTO value, $Res Function(LastPrayerEventDTO) _then) = _$LastPrayerEventDTOCopyWithImpl;
@useResult
$Res call({
@DateTimeConverter() DateTime createdAt,@DateTimeConverter() DateTime updatedAt,@DateTimeConverter() DateTime? deletedAt, int id, int userId, int prayerId
});




}
/// @nodoc
class _$LastPrayerEventDTOCopyWithImpl<$Res>
    implements $LastPrayerEventDTOCopyWith<$Res> {
  _$LastPrayerEventDTOCopyWithImpl(this._self, this._then);

  final LastPrayerEventDTO _self;
  final $Res Function(LastPrayerEventDTO) _then;

/// Create a copy of LastPrayerEventDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? id = null,Object? userId = null,Object? prayerId = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,prayerId: null == prayerId ? _self.prayerId : prayerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [LastPrayerEventDTO].
extension LastPrayerEventDTOPatterns on LastPrayerEventDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LastPrayerEventDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LastPrayerEventDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LastPrayerEventDTO value)  $default,){
final _that = this;
switch (_that) {
case _LastPrayerEventDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LastPrayerEventDTO value)?  $default,){
final _that = this;
switch (_that) {
case _LastPrayerEventDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  int userId,  int prayerId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LastPrayerEventDTO() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.userId,_that.prayerId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  int userId,  int prayerId)  $default,) {final _that = this;
switch (_that) {
case _LastPrayerEventDTO():
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.userId,_that.prayerId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  int userId,  int prayerId)?  $default,) {final _that = this;
switch (_that) {
case _LastPrayerEventDTO() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.userId,_that.prayerId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LastPrayerEventDTO implements LastPrayerEventDTO {
   _LastPrayerEventDTO({@DateTimeConverter() required this.createdAt, @DateTimeConverter() required this.updatedAt, @DateTimeConverter() this.deletedAt, required this.id, required this.userId, required this.prayerId});
  factory _LastPrayerEventDTO.fromJson(Map<String, dynamic> json) => _$LastPrayerEventDTOFromJson(json);

@override@DateTimeConverter() final  DateTime createdAt;
@override@DateTimeConverter() final  DateTime updatedAt;
@override@DateTimeConverter() final  DateTime? deletedAt;
@override final  int id;
@override final  int userId;
@override final  int prayerId;

/// Create a copy of LastPrayerEventDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LastPrayerEventDTOCopyWith<_LastPrayerEventDTO> get copyWith => __$LastPrayerEventDTOCopyWithImpl<_LastPrayerEventDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LastPrayerEventDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LastPrayerEventDTO&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.prayerId, prayerId) || other.prayerId == prayerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,deletedAt,id,userId,prayerId);

@override
String toString() {
  return 'LastPrayerEventDTO(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, id: $id, userId: $userId, prayerId: $prayerId)';
}


}

/// @nodoc
abstract mixin class _$LastPrayerEventDTOCopyWith<$Res> implements $LastPrayerEventDTOCopyWith<$Res> {
  factory _$LastPrayerEventDTOCopyWith(_LastPrayerEventDTO value, $Res Function(_LastPrayerEventDTO) _then) = __$LastPrayerEventDTOCopyWithImpl;
@override @useResult
$Res call({
@DateTimeConverter() DateTime createdAt,@DateTimeConverter() DateTime updatedAt,@DateTimeConverter() DateTime? deletedAt, int id, int userId, int prayerId
});




}
/// @nodoc
class __$LastPrayerEventDTOCopyWithImpl<$Res>
    implements _$LastPrayerEventDTOCopyWith<$Res> {
  __$LastPrayerEventDTOCopyWithImpl(this._self, this._then);

  final _LastPrayerEventDTO _self;
  final $Res Function(_LastPrayerEventDTO) _then;

/// Create a copy of LastPrayerEventDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? id = null,Object? userId = null,Object? prayerId = null,}) {
  return _then(_LastPrayerEventDTO(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,prayerId: null == prayerId ? _self.prayerId : prayerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
