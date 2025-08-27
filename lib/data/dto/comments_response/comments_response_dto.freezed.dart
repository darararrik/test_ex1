// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CommentsResponseDTO {

 List<CommentsDTO> get data; CursorDTO get cursor;
/// Create a copy of CommentsResponseDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentsResponseDTOCopyWith<CommentsResponseDTO> get copyWith => _$CommentsResponseDTOCopyWithImpl<CommentsResponseDTO>(this as CommentsResponseDTO, _$identity);

  /// Serializes this CommentsResponseDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsResponseDTO&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),cursor);

@override
String toString() {
  return 'CommentsResponseDTO(data: $data, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class $CommentsResponseDTOCopyWith<$Res>  {
  factory $CommentsResponseDTOCopyWith(CommentsResponseDTO value, $Res Function(CommentsResponseDTO) _then) = _$CommentsResponseDTOCopyWithImpl;
@useResult
$Res call({
 List<CommentsDTO> data, CursorDTO cursor
});


$CursorDTOCopyWith<$Res> get cursor;

}
/// @nodoc
class _$CommentsResponseDTOCopyWithImpl<$Res>
    implements $CommentsResponseDTOCopyWith<$Res> {
  _$CommentsResponseDTOCopyWithImpl(this._self, this._then);

  final CommentsResponseDTO _self;
  final $Res Function(CommentsResponseDTO) _then;

/// Create a copy of CommentsResponseDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? cursor = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CommentsDTO>,cursor: null == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CursorDTO,
  ));
}
/// Create a copy of CommentsResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CursorDTOCopyWith<$Res> get cursor {
  
  return $CursorDTOCopyWith<$Res>(_self.cursor, (value) {
    return _then(_self.copyWith(cursor: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommentsResponseDTO].
extension CommentsResponseDTOPatterns on CommentsResponseDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentsResponseDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentsResponseDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentsResponseDTO value)  $default,){
final _that = this;
switch (_that) {
case _CommentsResponseDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentsResponseDTO value)?  $default,){
final _that = this;
switch (_that) {
case _CommentsResponseDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CommentsDTO> data,  CursorDTO cursor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentsResponseDTO() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CommentsDTO> data,  CursorDTO cursor)  $default,) {final _that = this;
switch (_that) {
case _CommentsResponseDTO():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CommentsDTO> data,  CursorDTO cursor)?  $default,) {final _that = this;
switch (_that) {
case _CommentsResponseDTO() when $default != null:
return $default(_that.data,_that.cursor);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommentsResponseDTO implements CommentsResponseDTO {
  const _CommentsResponseDTO({required final  List<CommentsDTO> data, required this.cursor}): _data = data;
  factory _CommentsResponseDTO.fromJson(Map<String, dynamic> json) => _$CommentsResponseDTOFromJson(json);

 final  List<CommentsDTO> _data;
@override List<CommentsDTO> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  CursorDTO cursor;

/// Create a copy of CommentsResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentsResponseDTOCopyWith<_CommentsResponseDTO> get copyWith => __$CommentsResponseDTOCopyWithImpl<_CommentsResponseDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommentsResponseDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentsResponseDTO&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.cursor, cursor) || other.cursor == cursor));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),cursor);

@override
String toString() {
  return 'CommentsResponseDTO(data: $data, cursor: $cursor)';
}


}

/// @nodoc
abstract mixin class _$CommentsResponseDTOCopyWith<$Res> implements $CommentsResponseDTOCopyWith<$Res> {
  factory _$CommentsResponseDTOCopyWith(_CommentsResponseDTO value, $Res Function(_CommentsResponseDTO) _then) = __$CommentsResponseDTOCopyWithImpl;
@override @useResult
$Res call({
 List<CommentsDTO> data, CursorDTO cursor
});


@override $CursorDTOCopyWith<$Res> get cursor;

}
/// @nodoc
class __$CommentsResponseDTOCopyWithImpl<$Res>
    implements _$CommentsResponseDTOCopyWith<$Res> {
  __$CommentsResponseDTOCopyWithImpl(this._self, this._then);

  final _CommentsResponseDTO _self;
  final $Res Function(_CommentsResponseDTO) _then;

/// Create a copy of CommentsResponseDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? cursor = null,}) {
  return _then(_CommentsResponseDTO(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CommentsDTO>,cursor: null == cursor ? _self.cursor : cursor // ignore: cast_nullable_to_non_nullable
as CursorDTO,
  ));
}

/// Create a copy of CommentsResponseDTO
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
