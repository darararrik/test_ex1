// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_desks_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UsersDesksModel {

 int get id; int get userId; String get title; List<DeskModel> get desks;
/// Create a copy of UsersDesksModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsersDesksModelCopyWith<UsersDesksModel> get copyWith => _$UsersDesksModelCopyWithImpl<UsersDesksModel>(this as UsersDesksModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsersDesksModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.desks, desks));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,title,const DeepCollectionEquality().hash(desks));

@override
String toString() {
  return 'UsersDesksModel(id: $id, userId: $userId, title: $title, desks: $desks)';
}


}

/// @nodoc
abstract mixin class $UsersDesksModelCopyWith<$Res>  {
  factory $UsersDesksModelCopyWith(UsersDesksModel value, $Res Function(UsersDesksModel) _then) = _$UsersDesksModelCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String title, List<DeskModel> desks
});




}
/// @nodoc
class _$UsersDesksModelCopyWithImpl<$Res>
    implements $UsersDesksModelCopyWith<$Res> {
  _$UsersDesksModelCopyWithImpl(this._self, this._then);

  final UsersDesksModel _self;
  final $Res Function(UsersDesksModel) _then;

/// Create a copy of UsersDesksModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? desks = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,desks: null == desks ? _self.desks : desks // ignore: cast_nullable_to_non_nullable
as List<DeskModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [UsersDesksModel].
extension UsersDesksModelPatterns on UsersDesksModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsersDesksModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsersDesksModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsersDesksModel value)  $default,){
final _that = this;
switch (_that) {
case _UsersDesksModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsersDesksModel value)?  $default,){
final _that = this;
switch (_that) {
case _UsersDesksModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String title,  List<DeskModel> desks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsersDesksModel() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.desks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String title,  List<DeskModel> desks)  $default,) {final _that = this;
switch (_that) {
case _UsersDesksModel():
return $default(_that.id,_that.userId,_that.title,_that.desks);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String title,  List<DeskModel> desks)?  $default,) {final _that = this;
switch (_that) {
case _UsersDesksModel() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.desks);case _:
  return null;

}
}

}

/// @nodoc


class _UsersDesksModel implements UsersDesksModel {
  const _UsersDesksModel({required this.id, required this.userId, required this.title, required final  List<DeskModel> desks}): _desks = desks;
  

@override final  int id;
@override final  int userId;
@override final  String title;
 final  List<DeskModel> _desks;
@override List<DeskModel> get desks {
  if (_desks is EqualUnmodifiableListView) return _desks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_desks);
}


/// Create a copy of UsersDesksModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsersDesksModelCopyWith<_UsersDesksModel> get copyWith => __$UsersDesksModelCopyWithImpl<_UsersDesksModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsersDesksModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._desks, _desks));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,title,const DeepCollectionEquality().hash(_desks));

@override
String toString() {
  return 'UsersDesksModel(id: $id, userId: $userId, title: $title, desks: $desks)';
}


}

/// @nodoc
abstract mixin class _$UsersDesksModelCopyWith<$Res> implements $UsersDesksModelCopyWith<$Res> {
  factory _$UsersDesksModelCopyWith(_UsersDesksModel value, $Res Function(_UsersDesksModel) _then) = __$UsersDesksModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String title, List<DeskModel> desks
});




}
/// @nodoc
class __$UsersDesksModelCopyWithImpl<$Res>
    implements _$UsersDesksModelCopyWith<$Res> {
  __$UsersDesksModelCopyWithImpl(this._self, this._then);

  final _UsersDesksModel _self;
  final $Res Function(_UsersDesksModel) _then;

/// Create a copy of UsersDesksModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? desks = null,}) {
  return _then(_UsersDesksModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,desks: null == desks ? _self._desks : desks // ignore: cast_nullable_to_non_nullable
as List<DeskModel>,
  ));
}


}

// dart format on
