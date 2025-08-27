// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CursorDTO {

 String? get afterCursor; String? get beforeCursor;
/// Create a copy of CursorDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CursorDTOCopyWith<CursorDTO> get copyWith => _$CursorDTOCopyWithImpl<CursorDTO>(this as CursorDTO, _$identity);

  /// Serializes this CursorDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CursorDTO&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor)&&(identical(other.beforeCursor, beforeCursor) || other.beforeCursor == beforeCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,afterCursor,beforeCursor);

@override
String toString() {
  return 'CursorDTO(afterCursor: $afterCursor, beforeCursor: $beforeCursor)';
}


}

/// @nodoc
abstract mixin class $CursorDTOCopyWith<$Res>  {
  factory $CursorDTOCopyWith(CursorDTO value, $Res Function(CursorDTO) _then) = _$CursorDTOCopyWithImpl;
@useResult
$Res call({
 String? afterCursor, String? beforeCursor
});




}
/// @nodoc
class _$CursorDTOCopyWithImpl<$Res>
    implements $CursorDTOCopyWith<$Res> {
  _$CursorDTOCopyWithImpl(this._self, this._then);

  final CursorDTO _self;
  final $Res Function(CursorDTO) _then;

/// Create a copy of CursorDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? afterCursor = freezed,Object? beforeCursor = freezed,}) {
  return _then(_self.copyWith(
afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,beforeCursor: freezed == beforeCursor ? _self.beforeCursor : beforeCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CursorDTO].
extension CursorDTOPatterns on CursorDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CursorDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CursorDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CursorDTO value)  $default,){
final _that = this;
switch (_that) {
case _CursorDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CursorDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CursorDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? afterCursor,  String? beforeCursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CursorDTO() when $default != null:
return $default(_that.afterCursor,_that.beforeCursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? afterCursor,  String? beforeCursor)  $default,) {final _that = this;
switch (_that) {
case _CursorDTO():
return $default(_that.afterCursor,_that.beforeCursor);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? afterCursor,  String? beforeCursor)?  $default,) {final _that = this;
switch (_that) {
case _CursorDTO() when $default != null:
return $default(_that.afterCursor,_that.beforeCursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CursorDTO implements CursorDTO {
  const _CursorDTO({this.afterCursor, this.beforeCursor});
  factory _CursorDTO.fromJson(Map<String, dynamic> json) => _$CursorDTOFromJson(json);

@override final  String? afterCursor;
@override final  String? beforeCursor;

/// Create a copy of CursorDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CursorDTOCopyWith<_CursorDTO> get copyWith => __$CursorDTOCopyWithImpl<_CursorDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CursorDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CursorDTO&&(identical(other.afterCursor, afterCursor) || other.afterCursor == afterCursor)&&(identical(other.beforeCursor, beforeCursor) || other.beforeCursor == beforeCursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,afterCursor,beforeCursor);

@override
String toString() {
  return 'CursorDTO(afterCursor: $afterCursor, beforeCursor: $beforeCursor)';
}


}

/// @nodoc
abstract mixin class _$CursorDTOCopyWith<$Res> implements $CursorDTOCopyWith<$Res> {
  factory _$CursorDTOCopyWith(_CursorDTO value, $Res Function(_CursorDTO) _then) = __$CursorDTOCopyWithImpl;
@override @useResult
$Res call({
 String? afterCursor, String? beforeCursor
});




}
/// @nodoc
class __$CursorDTOCopyWithImpl<$Res>
    implements _$CursorDTOCopyWith<$Res> {
  __$CursorDTOCopyWithImpl(this._self, this._then);

  final _CursorDTO _self;
  final $Res Function(_CursorDTO) _then;

/// Create a copy of CursorDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? afterCursor = freezed,Object? beforeCursor = freezed,}) {
  return _then(_CursorDTO(
afterCursor: freezed == afterCursor ? _self.afterCursor : afterCursor // ignore: cast_nullable_to_non_nullable
as String?,beforeCursor: freezed == beforeCursor ? _self.beforeCursor : beforeCursor // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
