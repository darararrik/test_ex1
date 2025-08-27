// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'created_comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreatedCommentDTO {

 String get body;
/// Create a copy of CreatedCommentDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatedCommentDTOCopyWith<CreatedCommentDTO> get copyWith => _$CreatedCommentDTOCopyWithImpl<CreatedCommentDTO>(this as CreatedCommentDTO, _$identity);

  /// Serializes this CreatedCommentDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatedCommentDTO&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'CreatedCommentDTO(body: $body)';
}


}

/// @nodoc
abstract mixin class $CreatedCommentDTOCopyWith<$Res>  {
  factory $CreatedCommentDTOCopyWith(CreatedCommentDTO value, $Res Function(CreatedCommentDTO) _then) = _$CreatedCommentDTOCopyWithImpl;
@useResult
$Res call({
 String body
});




}
/// @nodoc
class _$CreatedCommentDTOCopyWithImpl<$Res>
    implements $CreatedCommentDTOCopyWith<$Res> {
  _$CreatedCommentDTOCopyWithImpl(this._self, this._then);

  final CreatedCommentDTO _self;
  final $Res Function(CreatedCommentDTO) _then;

/// Create a copy of CreatedCommentDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = null,}) {
  return _then(_self.copyWith(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CreatedCommentDTO].
extension CreatedCommentDTOPatterns on CreatedCommentDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreatedCommentDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreatedCommentDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreatedCommentDTO value)  $default,){
final _that = this;
switch (_that) {
case _CreatedCommentDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreatedCommentDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CreatedCommentDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreatedCommentDTO() when $default != null:
return $default(_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String body)  $default,) {final _that = this;
switch (_that) {
case _CreatedCommentDTO():
return $default(_that.body);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String body)?  $default,) {final _that = this;
switch (_that) {
case _CreatedCommentDTO() when $default != null:
return $default(_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreatedCommentDTO implements CreatedCommentDTO {
  const _CreatedCommentDTO({required this.body});
  factory _CreatedCommentDTO.fromJson(Map<String, dynamic> json) => _$CreatedCommentDTOFromJson(json);

@override final  String body;

/// Create a copy of CreatedCommentDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreatedCommentDTOCopyWith<_CreatedCommentDTO> get copyWith => __$CreatedCommentDTOCopyWithImpl<_CreatedCommentDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreatedCommentDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreatedCommentDTO&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body);

@override
String toString() {
  return 'CreatedCommentDTO(body: $body)';
}


}

/// @nodoc
abstract mixin class _$CreatedCommentDTOCopyWith<$Res> implements $CreatedCommentDTOCopyWith<$Res> {
  factory _$CreatedCommentDTOCopyWith(_CreatedCommentDTO value, $Res Function(_CreatedCommentDTO) _then) = __$CreatedCommentDTOCopyWithImpl;
@override @useResult
$Res call({
 String body
});




}
/// @nodoc
class __$CreatedCommentDTOCopyWithImpl<$Res>
    implements _$CreatedCommentDTOCopyWith<$Res> {
  __$CreatedCommentDTOCopyWithImpl(this._self, this._then);

  final _CreatedCommentDTO _self;
  final $Res Function(_CreatedCommentDTO) _then;

/// Create a copy of CreatedCommentDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = null,}) {
  return _then(_CreatedCommentDTO(
body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
