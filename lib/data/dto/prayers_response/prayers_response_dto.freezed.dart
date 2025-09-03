// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayers_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrayersResponseDTO {

 List<PrayerDTO> get data; CursorDTO get cursor;
/// Create a copy of PrayersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayersResponseDTOCopyWith<PrayersResponseDTO> get copyWith => _$PrayersResponseDTOCopyWithImpl<PrayersResponseDTO>(this as PrayersResponseDTO, _$identity);

  /// Serializes this PrayersResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayersResponseDTO&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),cursor);

@override
String toString() {
  return 'PrayersResponseDTO(data: $data, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class $PrayersResponseDTOCopyWith<$Res>  {
  factory $PrayersResponseDTOCopyWith(PrayersResponseDTO value, $Res Function(PrayersResponseDTO) _then) = _$PrayersResponseDTOCopyWithImpl;
@useResult
$Res call({
 List<PrayerDTO> data, CursorDTO cursor
});


$CursorDTOCopyWith<$Res> get cursor;

}
/// @nodoc
class _$PrayersResponseDTOCopyWithImpl<$Res>
    implements $PrayersResponseDTOCopyWith<$Res> {
  _$PrayersResponseDTOCopyWithImpl(this._self, this._then);

  final PrayersResponseDTO _self;
  final $Res Function(PrayersResponseDTO) _then;

/// Create a copy of PrayersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? cursor = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PrayerDTO>,cursor: null == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CursorDTO,
  ));
}
/// Create a copy of PrayersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorDTOCopyWith<$Res> get cursor {
  
  return $CursorDTOCopyWith<$Res>(_self.cursor, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrayersResponseDTO].
extension PrayersResponseDTOPatterns on PrayersResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayersResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayersResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayersResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _PrayersResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayersResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PrayersResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PrayerDTO> data,  CursorDTO cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayersResponseDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PrayerDTO> data,  CursorDTO cursor)  $default,) {final _that = this;
switch (_that) {
case _PrayersResponseDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PrayerDTO> data,  CursorDTO cursor)?  $default,) {final _that = this;
switch (_that) {
case _PrayersResponseDTO() when $default != null:
return $default(_that.data,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrayersResponseDTO implements PrayersResponseDTO {
  const _PrayersResponseDTO({required final  List<PrayerDTO> data, required this.cursor}): _data = data;
  factory _PrayersResponseDTO.fromJson(Map<String, dynamic> json) => _$PrayersResponseDTOFromJson(json);

 final  List<PrayerDTO> _data;
@override List<PrayerDTO> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CursorDTO cursor;

/// Create a copy of PrayersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayersResponseDTOCopyWith<_PrayersResponseDTO> get copyWith => __$PrayersResponseDTOCopyWithImpl<_PrayersResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrayersResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayersResponseDTO&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),cursor);

@override
String toString() {
  return 'PrayersResponseDTO(data: $data, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$PrayersResponseDTOCopyWith<$Res> implements $PrayersResponseDTOCopyWith<$Res> {
  factory _$PrayersResponseDTOCopyWith(_PrayersResponseDTO value, $Res Function(_PrayersResponseDTO) _then) = __$PrayersResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 List<PrayerDTO> data, CursorDTO cursor
});


@override $CursorDTOCopyWith<$Res> get cursor;

}
/// @nodoc
class __$PrayersResponseDTOCopyWithImpl<$Res>
    implements _$PrayersResponseDTOCopyWith<$Res> {
  __$PrayersResponseDTOCopyWithImpl(this._self, this._then);

  final _PrayersResponseDTO _self;
  final $Res Function(_PrayersResponseDTO) _then;

/// Create a copy of PrayersResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? cursor = null,}) {
  return _then(_PrayersResponseDTO(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PrayerDTO>,cursor: null == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CursorDTO,
  ));
}

/// Create a copy of PrayersResponseDTO
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
