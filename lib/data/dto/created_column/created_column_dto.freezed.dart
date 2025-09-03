// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_column_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedColumnDTO {

 String get title;@JsonKey(includeIfNull: true) String? get description;
/// Create a copy of CreatedColumnDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedColumnDTOCopyWith<CreatedColumnDTO> get copyWith => _$CreatedColumnDTOCopyWithImpl<CreatedColumnDTO>(this as CreatedColumnDTO, _$identity);

  /// Serializes this CreatedColumnDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedColumnDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'CreatedColumnDTO(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreatedColumnDTOCopyWith<$Res>  {
  factory $CreatedColumnDTOCopyWith(CreatedColumnDTO value, $Res Function(CreatedColumnDTO) _then) = _$CreatedColumnDTOCopyWithImpl;
@useResult
$Res call({
 String title,@JsonKey(includeIfNull: true) String? description
});




}
/// @nodoc
class _$CreatedColumnDTOCopyWithImpl<$Res>
    implements $CreatedColumnDTOCopyWith<$Res> {
  _$CreatedColumnDTOCopyWithImpl(this._self, this._then);

  final CreatedColumnDTO _self;
  final $Res Function(CreatedColumnDTO) _then;

/// Create a copy of CreatedColumnDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedColumnDTO].
extension CreatedColumnDTOPatterns on CreatedColumnDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedColumnDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedColumnDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedColumnDTO value)  $default,){
final _that = this;
switch (_that) {
case _CreatedColumnDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedColumnDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedColumnDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title, @JsonKey(includeIfNull: true)  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedColumnDTO() when $default != null:
return $default(_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title, @JsonKey(includeIfNull: true)  String? description)  $default,) {final _that = this;
switch (_that) {
case _CreatedColumnDTO():
return $default(_that.title,_that.description);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title, @JsonKey(includeIfNull: true)  String? description)?  $default,) {final _that = this;
switch (_that) {
case _CreatedColumnDTO() when $default != null:
return $default(_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedColumnDTO implements CreatedColumnDTO {
  const _CreatedColumnDTO({required this.title, @JsonKey(includeIfNull: true) this.description});
  factory _CreatedColumnDTO.fromJson(Map<String, dynamic> json) => _$CreatedColumnDTOFromJson(json);

@override final  String title;
@override@JsonKey(includeIfNull: true) final  String? description;

/// Create a copy of CreatedColumnDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedColumnDTOCopyWith<_CreatedColumnDTO> get copyWith => __$CreatedColumnDTOCopyWithImpl<_CreatedColumnDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedColumnDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedColumnDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'CreatedColumnDTO(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreatedColumnDTOCopyWith<$Res> implements $CreatedColumnDTOCopyWith<$Res> {
  factory _$CreatedColumnDTOCopyWith(_CreatedColumnDTO value, $Res Function(_CreatedColumnDTO) _then) = __$CreatedColumnDTOCopyWithImpl;
@override @useResult
$Res call({
 String title,@JsonKey(includeIfNull: true) String? description
});




}
/// @nodoc
class __$CreatedColumnDTOCopyWithImpl<$Res>
    implements _$CreatedColumnDTOCopyWith<$Res> {
  __$CreatedColumnDTOCopyWithImpl(this._self, this._then);

  final _CreatedColumnDTO _self;
  final $Res Function(_CreatedColumnDTO) _then;

/// Create a copy of CreatedColumnDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,}) {
  return _then(_CreatedColumnDTO(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
