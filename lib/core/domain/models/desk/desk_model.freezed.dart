// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'desk_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeskModel {

 int get id; int get userId; String get title; List<TaskModel> get tasks;
/// Create a copy of DeskModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeskModelCopyWith<DeskModel> get copyWith => _$DeskModelCopyWithImpl<DeskModel>(this as DeskModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeskModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.tasks, tasks));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,title,const DeepCollectionEquality().hash(tasks));

@override
String toString() {
  return 'DeskModel(id: $id, userId: $userId, title: $title, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class $DeskModelCopyWith<$Res>  {
  factory $DeskModelCopyWith(DeskModel value, $Res Function(DeskModel) _then) = _$DeskModelCopyWithImpl;
@useResult
$Res call({
 int id, int userId, String title, List<TaskModel> tasks
});




}
/// @nodoc
class _$DeskModelCopyWithImpl<$Res>
    implements $DeskModelCopyWith<$Res> {
  _$DeskModelCopyWithImpl(this._self, this._then);

  final DeskModel _self;
  final $Res Function(DeskModel) _then;

/// Create a copy of DeskModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? tasks = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tasks: null == tasks ? _self.tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [DeskModel].
extension DeskModelPatterns on DeskModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeskModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeskModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeskModel value)  $default,){
final _that = this;
switch (_that) {
case _DeskModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeskModel value)?  $default,){
final _that = this;
switch (_that) {
case _DeskModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  String title,  List<TaskModel> tasks)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeskModel() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.tasks);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  String title,  List<TaskModel> tasks)  $default,) {final _that = this;
switch (_that) {
case _DeskModel():
return $default(_that.id,_that.userId,_that.title,_that.tasks);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  String title,  List<TaskModel> tasks)?  $default,) {final _that = this;
switch (_that) {
case _DeskModel() when $default != null:
return $default(_that.id,_that.userId,_that.title,_that.tasks);case _:
  return null;

}
}

}

/// @nodoc


class _DeskModel implements DeskModel {
  const _DeskModel({required this.id, required this.userId, required this.title, required final  List<TaskModel> tasks}): _tasks = tasks;
  

@override final  int id;
@override final  int userId;
@override final  String title;
 final  List<TaskModel> _tasks;
@override List<TaskModel> get tasks {
  if (_tasks is EqualUnmodifiableListView) return _tasks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasks);
}


/// Create a copy of DeskModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeskModelCopyWith<_DeskModel> get copyWith => __$DeskModelCopyWithImpl<_DeskModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeskModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._tasks, _tasks));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,title,const DeepCollectionEquality().hash(_tasks));

@override
String toString() {
  return 'DeskModel(id: $id, userId: $userId, title: $title, tasks: $tasks)';
}


}

/// @nodoc
abstract mixin class _$DeskModelCopyWith<$Res> implements $DeskModelCopyWith<$Res> {
  factory _$DeskModelCopyWith(_DeskModel value, $Res Function(_DeskModel) _then) = __$DeskModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, String title, List<TaskModel> tasks
});




}
/// @nodoc
class __$DeskModelCopyWithImpl<$Res>
    implements _$DeskModelCopyWith<$Res> {
  __$DeskModelCopyWithImpl(this._self, this._then);

  final _DeskModel _self;
  final $Res Function(_DeskModel) _then;

/// Create a copy of DeskModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? title = null,Object? tasks = null,}) {
  return _then(_DeskModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,tasks: null == tasks ? _self._tasks : tasks // ignore: cast_nullable_to_non_nullable
as List<TaskModel>,
  ));
}


}

// dart format on
