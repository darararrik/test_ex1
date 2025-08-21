// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskModel {

 int get id; int get userId; int get deskId; bool get isFollow; String get title; int get totalPrayers; int get myPrayers; int get otherPrayers; int get members; int get complete; DateTime get date; DateTime get lastPray;
/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskModelCopyWith<TaskModel> get copyWith => _$TaskModelCopyWithImpl<TaskModel>(this as TaskModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deskId, deskId) || other.deskId == deskId)&&(identical(other.isFollow, isFollow) || other.isFollow == isFollow)&&(identical(other.title, title) || other.title == title)&&(identical(other.totalPrayers, totalPrayers) || other.totalPrayers == totalPrayers)&&(identical(other.myPrayers, myPrayers) || other.myPrayers == myPrayers)&&(identical(other.otherPrayers, otherPrayers) || other.otherPrayers == otherPrayers)&&(identical(other.members, members) || other.members == members)&&(identical(other.complete, complete) || other.complete == complete)&&(identical(other.date, date) || other.date == date)&&(identical(other.lastPray, lastPray) || other.lastPray == lastPray));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,deskId,isFollow,title,totalPrayers,myPrayers,otherPrayers,members,complete,date,lastPray);

@override
String toString() {
  return 'TaskModel(id: $id, userId: $userId, deskId: $deskId, isFollow: $isFollow, title: $title, totalPrayers: $totalPrayers, myPrayers: $myPrayers, otherPrayers: $otherPrayers, members: $members, complete: $complete, date: $date, lastPray: $lastPray)';
}


}

/// @nodoc
abstract mixin class $TaskModelCopyWith<$Res>  {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) _then) = _$TaskModelCopyWithImpl;
@useResult
$Res call({
 int id, int userId, int deskId, bool isFollow, String title, int totalPrayers, int myPrayers, int otherPrayers, int members, int complete, DateTime date, DateTime lastPray
});




}
/// @nodoc
class _$TaskModelCopyWithImpl<$Res>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._self, this._then);

  final TaskModel _self;
  final $Res Function(TaskModel) _then;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? deskId = null,Object? isFollow = null,Object? title = null,Object? totalPrayers = null,Object? myPrayers = null,Object? otherPrayers = null,Object? members = null,Object? complete = null,Object? date = null,Object? lastPray = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,deskId: null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,isFollow: null == isFollow ? _self.isFollow : isFollow // ignore: cast_nullable_to_non_nullable
as bool,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,totalPrayers: null == totalPrayers ? _self.totalPrayers : totalPrayers // ignore: cast_nullable_to_non_nullable
as int,myPrayers: null == myPrayers ? _self.myPrayers : myPrayers // ignore: cast_nullable_to_non_nullable
as int,otherPrayers: null == otherPrayers ? _self.otherPrayers : otherPrayers // ignore: cast_nullable_to_non_nullable
as int,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as int,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,lastPray: null == lastPray ? _self.lastPray : lastPray // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TaskModel].
extension TaskModelPatterns on TaskModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaskModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaskModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaskModel value)  $default,){
final _that = this;
switch (_that) {
case _TaskModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaskModel value)?  $default,){
final _that = this;
switch (_that) {
case _TaskModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int userId,  int deskId,  bool isFollow,  String title,  int totalPrayers,  int myPrayers,  int otherPrayers,  int members,  int complete,  DateTime date,  DateTime lastPray)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaskModel() when $default != null:
return $default(_that.id,_that.userId,_that.deskId,_that.isFollow,_that.title,_that.totalPrayers,_that.myPrayers,_that.otherPrayers,_that.members,_that.complete,_that.date,_that.lastPray);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int userId,  int deskId,  bool isFollow,  String title,  int totalPrayers,  int myPrayers,  int otherPrayers,  int members,  int complete,  DateTime date,  DateTime lastPray)  $default,) {final _that = this;
switch (_that) {
case _TaskModel():
return $default(_that.id,_that.userId,_that.deskId,_that.isFollow,_that.title,_that.totalPrayers,_that.myPrayers,_that.otherPrayers,_that.members,_that.complete,_that.date,_that.lastPray);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int userId,  int deskId,  bool isFollow,  String title,  int totalPrayers,  int myPrayers,  int otherPrayers,  int members,  int complete,  DateTime date,  DateTime lastPray)?  $default,) {final _that = this;
switch (_that) {
case _TaskModel() when $default != null:
return $default(_that.id,_that.userId,_that.deskId,_that.isFollow,_that.title,_that.totalPrayers,_that.myPrayers,_that.otherPrayers,_that.members,_that.complete,_that.date,_that.lastPray);case _:
  return null;

}
}

}

/// @nodoc


class _TaskModel extends TaskModel {
  const _TaskModel({required this.id, required this.userId, required this.deskId, required this.isFollow, required this.title, required this.totalPrayers, required this.myPrayers, required this.otherPrayers, required this.members, required this.complete, required this.date, required this.lastPray}): super._();
  

@override final  int id;
@override final  int userId;
@override final  int deskId;
@override final  bool isFollow;
@override final  String title;
@override final  int totalPrayers;
@override final  int myPrayers;
@override final  int otherPrayers;
@override final  int members;
@override final  int complete;
@override final  DateTime date;
@override final  DateTime lastPray;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskModelCopyWith<_TaskModel> get copyWith => __$TaskModelCopyWithImpl<_TaskModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskModel&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.deskId, deskId) || other.deskId == deskId)&&(identical(other.isFollow, isFollow) || other.isFollow == isFollow)&&(identical(other.title, title) || other.title == title)&&(identical(other.totalPrayers, totalPrayers) || other.totalPrayers == totalPrayers)&&(identical(other.myPrayers, myPrayers) || other.myPrayers == myPrayers)&&(identical(other.otherPrayers, otherPrayers) || other.otherPrayers == otherPrayers)&&(identical(other.members, members) || other.members == members)&&(identical(other.complete, complete) || other.complete == complete)&&(identical(other.date, date) || other.date == date)&&(identical(other.lastPray, lastPray) || other.lastPray == lastPray));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,deskId,isFollow,title,totalPrayers,myPrayers,otherPrayers,members,complete,date,lastPray);

@override
String toString() {
  return 'TaskModel(id: $id, userId: $userId, deskId: $deskId, isFollow: $isFollow, title: $title, totalPrayers: $totalPrayers, myPrayers: $myPrayers, otherPrayers: $otherPrayers, members: $members, complete: $complete, date: $date, lastPray: $lastPray)';
}


}

/// @nodoc
abstract mixin class _$TaskModelCopyWith<$Res> implements $TaskModelCopyWith<$Res> {
  factory _$TaskModelCopyWith(_TaskModel value, $Res Function(_TaskModel) _then) = __$TaskModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int userId, int deskId, bool isFollow, String title, int totalPrayers, int myPrayers, int otherPrayers, int members, int complete, DateTime date, DateTime lastPray
});




}
/// @nodoc
class __$TaskModelCopyWithImpl<$Res>
    implements _$TaskModelCopyWith<$Res> {
  __$TaskModelCopyWithImpl(this._self, this._then);

  final _TaskModel _self;
  final $Res Function(_TaskModel) _then;

/// Create a copy of TaskModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? deskId = null,Object? isFollow = null,Object? title = null,Object? totalPrayers = null,Object? myPrayers = null,Object? otherPrayers = null,Object? members = null,Object? complete = null,Object? date = null,Object? lastPray = null,}) {
  return _then(_TaskModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,deskId: null == deskId ? _self.deskId : deskId // ignore: cast_nullable_to_non_nullable
as int,isFollow: null == isFollow ? _self.isFollow : isFollow // ignore: cast_nullable_to_non_nullable
as bool,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,totalPrayers: null == totalPrayers ? _self.totalPrayers : totalPrayers // ignore: cast_nullable_to_non_nullable
as int,myPrayers: null == myPrayers ? _self.myPrayers : myPrayers // ignore: cast_nullable_to_non_nullable
as int,otherPrayers: null == otherPrayers ? _self.otherPrayers : otherPrayers // ignore: cast_nullable_to_non_nullable
as int,members: null == members ? _self.members : members // ignore: cast_nullable_to_non_nullable
as int,complete: null == complete ? _self.complete : complete // ignore: cast_nullable_to_non_nullable
as int,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,lastPray: null == lastPray ? _self.lastPray : lastPray // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
