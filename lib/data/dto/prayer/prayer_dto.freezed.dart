// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrayerDTO {

@DateTimeConverter() DateTime get createdAt;@DateTimeConverter() DateTime get updatedAt;@DateTimeConverter() DateTime? get deletedAt; int get id; String get title; String? get description; int get columnId; int get completesCount; int get subscribersCount; int get myPrayCount; int get otherPrayCount; LastPrayerEventDTO? get lastPrayerEvent;
/// Create a copy of PrayerDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrayerDTOCopyWith<PrayerDTO> get copyWith => _$PrayerDTOCopyWithImpl<PrayerDTO>(this as PrayerDTO, _$identity);

  /// Serializes this PrayerDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrayerDTO&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.columnId, columnId) || other.columnId == columnId)&&(identical(other.completesCount, completesCount) || other.completesCount == completesCount)&&(identical(other.subscribersCount, subscribersCount) || other.subscribersCount == subscribersCount)&&(identical(other.myPrayCount, myPrayCount) || other.myPrayCount == myPrayCount)&&(identical(other.otherPrayCount, otherPrayCount) || other.otherPrayCount == otherPrayCount)&&(identical(other.lastPrayerEvent, lastPrayerEvent) || other.lastPrayerEvent == lastPrayerEvent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,deletedAt,id,title,description,columnId,completesCount,subscribersCount,myPrayCount,otherPrayCount,lastPrayerEvent);

@override
String toString() {
  return 'PrayerDTO(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, id: $id, title: $title, description: $description, columnId: $columnId, completesCount: $completesCount, subscribersCount: $subscribersCount, myPrayCount: $myPrayCount, otherPrayCount: $otherPrayCount, lastPrayerEvent: $lastPrayerEvent)';
}


}

/// @nodoc
abstract mixin class $PrayerDTOCopyWith<$Res>  {
  factory $PrayerDTOCopyWith(PrayerDTO value, $Res Function(PrayerDTO) _then) = _$PrayerDTOCopyWithImpl;
@useResult
$Res call({
@DateTimeConverter() DateTime createdAt,@DateTimeConverter() DateTime updatedAt,@DateTimeConverter() DateTime? deletedAt, int id, String title, String? description, int columnId, int completesCount, int subscribersCount, int myPrayCount, int otherPrayCount, LastPrayerEventDTO? lastPrayerEvent
});


$LastPrayerEventDTOCopyWith<$Res>? get lastPrayerEvent;

}
/// @nodoc
class _$PrayerDTOCopyWithImpl<$Res>
    implements $PrayerDTOCopyWith<$Res> {
  _$PrayerDTOCopyWithImpl(this._self, this._then);

  final PrayerDTO _self;
  final $Res Function(PrayerDTO) _then;

/// Create a copy of PrayerDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? id = null,Object? title = null,Object? description = freezed,Object? columnId = null,Object? completesCount = null,Object? subscribersCount = null,Object? myPrayCount = null,Object? otherPrayCount = null,Object? lastPrayerEvent = freezed,}) {
  return _then(_self.copyWith(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,columnId: null == columnId ? _self.columnId : columnId // ignore: cast_nullable_to_non_nullable
as int,completesCount: null == completesCount ? _self.completesCount : completesCount // ignore: cast_nullable_to_non_nullable
as int,subscribersCount: null == subscribersCount ? _self.subscribersCount : subscribersCount // ignore: cast_nullable_to_non_nullable
as int,myPrayCount: null == myPrayCount ? _self.myPrayCount : myPrayCount // ignore: cast_nullable_to_non_nullable
as int,otherPrayCount: null == otherPrayCount ? _self.otherPrayCount : otherPrayCount // ignore: cast_nullable_to_non_nullable
as int,lastPrayerEvent: freezed == lastPrayerEvent ? _self.lastPrayerEvent : lastPrayerEvent // ignore: cast_nullable_to_non_nullable
as LastPrayerEventDTO?,
  ));
}
/// Create a copy of PrayerDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastPrayerEventDTOCopyWith<$Res>? get lastPrayerEvent {
    if (_self.lastPrayerEvent == null) {
    return null;
  }

  return $LastPrayerEventDTOCopyWith<$Res>(_self.lastPrayerEvent!, (value) {
    return _then(_self.copyWith(lastPrayerEvent: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrayerDTO].
extension PrayerDTOPatterns on PrayerDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrayerDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrayerDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrayerDTO value)  $default,){
final _that = this;
switch (_that) {
case _PrayerDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrayerDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PrayerDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  String title,  String? description,  int columnId,  int completesCount,  int subscribersCount,  int myPrayCount,  int otherPrayCount,  LastPrayerEventDTO? lastPrayerEvent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrayerDTO() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.title,_that.description,_that.columnId,_that.completesCount,_that.subscribersCount,_that.myPrayCount,_that.otherPrayCount,_that.lastPrayerEvent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  String title,  String? description,  int columnId,  int completesCount,  int subscribersCount,  int myPrayCount,  int otherPrayCount,  LastPrayerEventDTO? lastPrayerEvent)  $default,) {final _that = this;
switch (_that) {
case _PrayerDTO():
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.title,_that.description,_that.columnId,_that.completesCount,_that.subscribersCount,_that.myPrayCount,_that.otherPrayCount,_that.lastPrayerEvent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@DateTimeConverter()  DateTime createdAt, @DateTimeConverter()  DateTime updatedAt, @DateTimeConverter()  DateTime? deletedAt,  int id,  String title,  String? description,  int columnId,  int completesCount,  int subscribersCount,  int myPrayCount,  int otherPrayCount,  LastPrayerEventDTO? lastPrayerEvent)?  $default,) {final _that = this;
switch (_that) {
case _PrayerDTO() when $default != null:
return $default(_that.createdAt,_that.updatedAt,_that.deletedAt,_that.id,_that.title,_that.description,_that.columnId,_that.completesCount,_that.subscribersCount,_that.myPrayCount,_that.otherPrayCount,_that.lastPrayerEvent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrayerDTO implements PrayerDTO {
   _PrayerDTO({@DateTimeConverter() required this.createdAt, @DateTimeConverter() required this.updatedAt, @DateTimeConverter() this.deletedAt, required this.id, required this.title, this.description, required this.columnId, required this.completesCount, required this.subscribersCount, required this.myPrayCount, required this.otherPrayCount, this.lastPrayerEvent});
  factory _PrayerDTO.fromJson(Map<String, dynamic> json) => _$PrayerDTOFromJson(json);

@override@DateTimeConverter() final  DateTime createdAt;
@override@DateTimeConverter() final  DateTime updatedAt;
@override@DateTimeConverter() final  DateTime? deletedAt;
@override final  int id;
@override final  String title;
@override final  String? description;
@override final  int columnId;
@override final  int completesCount;
@override final  int subscribersCount;
@override final  int myPrayCount;
@override final  int otherPrayCount;
@override final  LastPrayerEventDTO? lastPrayerEvent;

/// Create a copy of PrayerDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrayerDTOCopyWith<_PrayerDTO> get copyWith => __$PrayerDTOCopyWithImpl<_PrayerDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrayerDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrayerDTO&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.columnId, columnId) || other.columnId == columnId)&&(identical(other.completesCount, completesCount) || other.completesCount == completesCount)&&(identical(other.subscribersCount, subscribersCount) || other.subscribersCount == subscribersCount)&&(identical(other.myPrayCount, myPrayCount) || other.myPrayCount == myPrayCount)&&(identical(other.otherPrayCount, otherPrayCount) || other.otherPrayCount == otherPrayCount)&&(identical(other.lastPrayerEvent, lastPrayerEvent) || other.lastPrayerEvent == lastPrayerEvent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,createdAt,updatedAt,deletedAt,id,title,description,columnId,completesCount,subscribersCount,myPrayCount,otherPrayCount,lastPrayerEvent);

@override
String toString() {
  return 'PrayerDTO(createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, id: $id, title: $title, description: $description, columnId: $columnId, completesCount: $completesCount, subscribersCount: $subscribersCount, myPrayCount: $myPrayCount, otherPrayCount: $otherPrayCount, lastPrayerEvent: $lastPrayerEvent)';
}


}

/// @nodoc
abstract mixin class _$PrayerDTOCopyWith<$Res> implements $PrayerDTOCopyWith<$Res> {
  factory _$PrayerDTOCopyWith(_PrayerDTO value, $Res Function(_PrayerDTO) _then) = __$PrayerDTOCopyWithImpl;
@override @useResult
$Res call({
@DateTimeConverter() DateTime createdAt,@DateTimeConverter() DateTime updatedAt,@DateTimeConverter() DateTime? deletedAt, int id, String title, String? description, int columnId, int completesCount, int subscribersCount, int myPrayCount, int otherPrayCount, LastPrayerEventDTO? lastPrayerEvent
});


@override $LastPrayerEventDTOCopyWith<$Res>? get lastPrayerEvent;

}
/// @nodoc
class __$PrayerDTOCopyWithImpl<$Res>
    implements _$PrayerDTOCopyWith<$Res> {
  __$PrayerDTOCopyWithImpl(this._self, this._then);

  final _PrayerDTO _self;
  final $Res Function(_PrayerDTO) _then;

/// Create a copy of PrayerDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? createdAt = null,Object? updatedAt = null,Object? deletedAt = freezed,Object? id = null,Object? title = null,Object? description = freezed,Object? columnId = null,Object? completesCount = null,Object? subscribersCount = null,Object? myPrayCount = null,Object? otherPrayCount = null,Object? lastPrayerEvent = freezed,}) {
  return _then(_PrayerDTO(
createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,columnId: null == columnId ? _self.columnId : columnId // ignore: cast_nullable_to_non_nullable
as int,completesCount: null == completesCount ? _self.completesCount : completesCount // ignore: cast_nullable_to_non_nullable
as int,subscribersCount: null == subscribersCount ? _self.subscribersCount : subscribersCount // ignore: cast_nullable_to_non_nullable
as int,myPrayCount: null == myPrayCount ? _self.myPrayCount : myPrayCount // ignore: cast_nullable_to_non_nullable
as int,otherPrayCount: null == otherPrayCount ? _self.otherPrayCount : otherPrayCount // ignore: cast_nullable_to_non_nullable
as int,lastPrayerEvent: freezed == lastPrayerEvent ? _self.lastPrayerEvent : lastPrayerEvent // ignore: cast_nullable_to_non_nullable
as LastPrayerEventDTO?,
  ));
}

/// Create a copy of PrayerDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LastPrayerEventDTOCopyWith<$Res>? get lastPrayerEvent {
    if (_self.lastPrayerEvent == null) {
    return null;
  }

  return $LastPrayerEventDTOCopyWith<$Res>(_self.lastPrayerEvent!, (value) {
    return _then(_self.copyWith(lastPrayerEvent: value));
  });
}
}

// dart format on
