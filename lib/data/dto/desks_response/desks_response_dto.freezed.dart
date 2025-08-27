// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desks_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DesksResponseDTO {

 List<DesksDTO> get data; CursorDTO get cursor;
/// Create a copy of DesksResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DesksResponseDTOCopyWith<DesksResponseDTO> get copyWith => _$DesksResponseDTOCopyWithImpl<DesksResponseDTO>(this as DesksResponseDTO, _$identity);

  /// Serializes this DesksResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DesksResponseDTO&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),cursor);

@override
String toString() {
  return 'DesksResponseDTO(data: $data, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class $DesksResponseDTOCopyWith<$Res>  {
  factory $DesksResponseDTOCopyWith(DesksResponseDTO value, $Res Function(DesksResponseDTO) _then) = _$DesksResponseDTOCopyWithImpl;
@useResult
$Res call({
 List<DesksDTO> data, CursorDTO cursor
});


$CursorDTOCopyWith<$Res> get cursor;

}
/// @nodoc
class _$DesksResponseDTOCopyWithImpl<$Res>
    implements $DesksResponseDTOCopyWith<$Res> {
  _$DesksResponseDTOCopyWithImpl(this._self, this._then);

  final DesksResponseDTO _self;
  final $Res Function(DesksResponseDTO) _then;

/// Create a copy of DesksResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? cursor = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DesksDTO>,cursor: null == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CursorDTO,
  ));
}
/// Create a copy of DesksResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorDTOCopyWith<$Res> get cursor {
  
  return $CursorDTOCopyWith<$Res>(_self.cursor, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}
}


/// Adds pattern-matching-related methods to [DesksResponseDTO].
extension DesksResponseDTOPatterns on DesksResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DesksResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DesksResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DesksResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _DesksResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DesksResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _DesksResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DesksDTO> data,  CursorDTO cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DesksResponseDTO() when $default != null:
return $default(_that.data,_that.cursor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DesksDTO> data,  CursorDTO cursor)  $default,) {final _that = this;
switch (_that) {
case _DesksResponseDTO():
return $default(_that.data,_that.cursor);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DesksDTO> data,  CursorDTO cursor)?  $default,) {final _that = this;
switch (_that) {
case _DesksResponseDTO() when $default != null:
return $default(_that.data,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DesksResponseDTO implements DesksResponseDTO {
  const _DesksResponseDTO({required final  List<DesksDTO> data, required this.cursor}): _data = data;
  factory _DesksResponseDTO.fromJson(Map<String, dynamic> json) => _$DesksResponseDTOFromJson(json);

 final  List<DesksDTO> _data;
@override List<DesksDTO> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CursorDTO cursor;

/// Create a copy of DesksResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DesksResponseDTOCopyWith<_DesksResponseDTO> get copyWith => __$DesksResponseDTOCopyWithImpl<_DesksResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DesksResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DesksResponseDTO&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),cursor);

@override
String toString() {
  return 'DesksResponseDTO(data: $data, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$DesksResponseDTOCopyWith<$Res> implements $DesksResponseDTOCopyWith<$Res> {
  factory _$DesksResponseDTOCopyWith(_DesksResponseDTO value, $Res Function(_DesksResponseDTO) _then) = __$DesksResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 List<DesksDTO> data, CursorDTO cursor
});


@override $CursorDTOCopyWith<$Res> get cursor;

}
/// @nodoc
class __$DesksResponseDTOCopyWithImpl<$Res>
    implements _$DesksResponseDTOCopyWith<$Res> {
  __$DesksResponseDTOCopyWithImpl(this._self, this._then);

  final _DesksResponseDTO _self;
  final $Res Function(_DesksResponseDTO) _then;

/// Create a copy of DesksResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? cursor = null,}) {
  return _then(_DesksResponseDTO(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DesksDTO>,cursor: null == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CursorDTO,
  ));
}

/// Create a copy of DesksResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorDTOCopyWith<$Res> get cursor {
  
  return $CursorDTOCopyWith<$Res>(_self.cursor, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}
}

// dart format on
