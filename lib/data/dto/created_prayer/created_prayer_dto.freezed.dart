// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_prayer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedPrayerDTO {

 String get title; String get description;
/// Create a copy of CreatedPrayerDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedPrayerDTOCopyWith<CreatedPrayerDTO> get copyWith => _$CreatedPrayerDTOCopyWithImpl<CreatedPrayerDTO>(this as CreatedPrayerDTO, _$identity);

  /// Serializes this CreatedPrayerDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedPrayerDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'CreatedPrayerDTO(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $CreatedPrayerDTOCopyWith<$Res>  {
  factory $CreatedPrayerDTOCopyWith(CreatedPrayerDTO value, $Res Function(CreatedPrayerDTO) _then) = _$CreatedPrayerDTOCopyWithImpl;
@useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class _$CreatedPrayerDTOCopyWithImpl<$Res>
    implements $CreatedPrayerDTOCopyWith<$Res> {
  _$CreatedPrayerDTOCopyWithImpl(this._self, this._then);

  final CreatedPrayerDTO _self;
  final $Res Function(CreatedPrayerDTO) _then;

/// Create a copy of CreatedPrayerDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedPrayerDTO].
extension CreatedPrayerDTOPatterns on CreatedPrayerDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedPrayerDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedPrayerDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedPrayerDTO value)  $default,){
final _that = this;
switch (_that) {
case _CreatedPrayerDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedPrayerDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedPrayerDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedPrayerDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _CreatedPrayerDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _CreatedPrayerDTO() when $default != null:
return $default(_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedPrayerDTO implements CreatedPrayerDTO {
  const _CreatedPrayerDTO({required this.title, required this.description});
  factory _CreatedPrayerDTO.fromJson(Map<String, dynamic> json) => _$CreatedPrayerDTOFromJson(json);

@override final  String title;
@override final  String description;

/// Create a copy of CreatedPrayerDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedPrayerDTOCopyWith<_CreatedPrayerDTO> get copyWith => __$CreatedPrayerDTOCopyWithImpl<_CreatedPrayerDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedPrayerDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedPrayerDTO&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description);

@override
String toString() {
  return 'CreatedPrayerDTO(title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$CreatedPrayerDTOCopyWith<$Res> implements $CreatedPrayerDTOCopyWith<$Res> {
  factory _$CreatedPrayerDTOCopyWith(_CreatedPrayerDTO value, $Res Function(_CreatedPrayerDTO) _then) = __$CreatedPrayerDTOCopyWithImpl;
@override @useResult
$Res call({
 String title, String description
});




}
/// @nodoc
class __$CreatedPrayerDTOCopyWithImpl<$Res>
    implements _$CreatedPrayerDTOCopyWith<$Res> {
  __$CreatedPrayerDTOCopyWithImpl(this._self, this._then);

  final _CreatedPrayerDTO _self;
  final $Res Function(_CreatedPrayerDTO) _then;

/// Create a copy of CreatedPrayerDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,}) {
  return _then(_CreatedPrayerDTO(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
