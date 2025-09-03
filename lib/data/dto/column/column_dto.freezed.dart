// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'column_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ColumnDTO {

@DateTimeConverter() DateTime get createdAt;@DateTimeConverter() DateTime get updatedAt;@DateTimeConverter() DateTime? get deletedAt; int get id; String get title; String? get description; int get userId;
/// Create a copy of ColumnDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ColumnDTOCopyWith<ColumnDTO> get copyWith => _$ColumnDTOCopyWithImpl<ColumnDTO>(this as ColumnDTO, _$identity);

  /// Serializes this ColumnDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ColumnDTO&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,deletedAt,id,title,description,userId);

@override
String toString() {
  return 'ColumnDTO(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, id: $id, title: $title, description: $description, userId: $userId)';
}


}

/// @nodoc
abstract mixin class $ColumnDTOCopyWith<$Res>  {
  factory $ColumnDTOCopyWith(ColumnDTO value, $Res Function(ColumnDTO) _then) = _$ColumnDTOCopyWithImpl;
@useResult
$Res call({
@DateTimeConverter() DateTime createdAt,@DateTimeConverter() DateTime updatedAt,@DateTimeConverter() DateTime? deletedAt, int id, String title, String? description, int userId
});




}
/// @nodoc
class _$ColumnDTOCopyWithImpl<$Res>
    implements $ColumnDTOCopyWith<$Res> {
  _$ColumnDTOCopyWithImpl(this._self, this._then);

  final ColumnDTO _self;
  final $Res Function(ColumnDTO) _then;

/// Create a copy of ColumnDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? id = null,Object? title = null,Object? description = freezed,Object? userId = null,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ColumnDTO].
extension ColumnDTOPatterns on ColumnDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ColumnDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ColumnDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ColumnDTO value)  $default,){
final _that = this;
switch (_that) {
case _ColumnDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ColumnDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ColumnDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  String title,  String? description,  int userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ColumnDTO() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.title,_that.description,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  String title,  String? description,  int userId)  $default,) {final _that = this;
switch (_that) {
case _ColumnDTO():
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.title,_that.description,_that.userId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  String title,  String? description,  int userId)?  $default,) {final _that = this;
switch (_that) {
case _ColumnDTO() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.title,_that.description,_that.userId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ColumnDTO implements ColumnDTO {
  const _ColumnDTO({@DateTimeConverter() required this.createdAt, @DateTimeConverter() required this.updatedAt, @DateTimeConverter() this.deletedAt, required this.id, required this.title, this.description, required this.userId});
  factory _ColumnDTO.fromJson(Map<String, dynamic> json) => _$ColumnDTOFromJson(json);

@override@DateTimeConverter() final  DateTime createdAt;
@override@DateTimeConverter() final  DateTime updatedAt;
@override@DateTimeConverter() final  DateTime? deletedAt;
@override final  int id;
@override final  String title;
@override final  String? description;
@override final  int userId;

/// Create a copy of ColumnDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ColumnDTOCopyWith<_ColumnDTO> get copyWith => __$ColumnDTOCopyWithImpl<_ColumnDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ColumnDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ColumnDTO&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.userId, userId) || other.userId == userId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,deletedAt,id,title,description,userId);

@override
String toString() {
  return 'ColumnDTO(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, id: $id, title: $title, description: $description, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$ColumnDTOCopyWith<$Res> implements $ColumnDTOCopyWith<$Res> {
  factory _$ColumnDTOCopyWith(_ColumnDTO value, $Res Function(_ColumnDTO) _then) = __$ColumnDTOCopyWithImpl;
@override @useResult
$Res call({
@DateTimeConverter() DateTime createdAt,@DateTimeConverter() DateTime updatedAt,@DateTimeConverter() DateTime? deletedAt, int id, String title, String? description, int userId
});




}
/// @nodoc
class __$ColumnDTOCopyWithImpl<$Res>
    implements _$ColumnDTOCopyWith<$Res> {
  __$ColumnDTOCopyWithImpl(this._self, this._then);

  final _ColumnDTO _self;
  final $Res Function(_ColumnDTO) _then;

/// Create a copy of ColumnDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? id = null,Object? title = null,Object? description = freezed,Object? userId = null,}) {
  return _then(_ColumnDTO(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
