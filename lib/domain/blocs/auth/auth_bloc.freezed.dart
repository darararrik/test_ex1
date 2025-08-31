// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CheckEvent value)?  check,TResult Function( _LoginEvent value)?  login,TResult Function( _RegisterEvent value)?  register,TResult Function( _LogoutEvent value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CheckEvent() when check != null:
return check(_that);case _LoginEvent() when login != null:
return login(_that);case _RegisterEvent() when register != null:
return register(_that);case _LogoutEvent() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CheckEvent value)  check,required TResult Function( _LoginEvent value)  login,required TResult Function( _RegisterEvent value)  register,required TResult Function( _LogoutEvent value)  logout,}){
final _that = this;
switch (_that) {
case _CheckEvent():
return check(_that);case _LoginEvent():
return login(_that);case _RegisterEvent():
return register(_that);case _LogoutEvent():
return logout(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CheckEvent value)?  check,TResult? Function( _LoginEvent value)?  login,TResult? Function( _RegisterEvent value)?  register,TResult? Function( _LogoutEvent value)?  logout,}){
final _that = this;
switch (_that) {
case _CheckEvent() when check != null:
return check(_that);case _LoginEvent() when login != null:
return login(_that);case _RegisterEvent() when register != null:
return register(_that);case _LogoutEvent() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  check,TResult Function( String email,  String password)?  login,TResult Function( String name,  String email,  String password)?  register,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CheckEvent() when check != null:
return check();case _LoginEvent() when login != null:
return login(_that.email,_that.password);case _RegisterEvent() when register != null:
return register(_that.name,_that.email,_that.password);case _LogoutEvent() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  check,required TResult Function( String email,  String password)  login,required TResult Function( String name,  String email,  String password)  register,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case _CheckEvent():
return check();case _LoginEvent():
return login(_that.email,_that.password);case _RegisterEvent():
return register(_that.name,_that.email,_that.password);case _LogoutEvent():
return logout();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  check,TResult? Function( String email,  String password)?  login,TResult? Function( String name,  String email,  String password)?  register,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case _CheckEvent() when check != null:
return check();case _LoginEvent() when login != null:
return login(_that.email,_that.password);case _RegisterEvent() when register != null:
return register(_that.name,_that.email,_that.password);case _LogoutEvent() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class _CheckEvent implements AuthEvent {
  const _CheckEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CheckEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.check()';
}


}




/// @nodoc


class _LoginEvent implements AuthEvent {
  const _LoginEvent(this.email, this.password);
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginEventCopyWith<_LoginEvent> get copyWith => __$LoginEventCopyWithImpl<_LoginEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginEvent&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.login(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$LoginEventCopyWith(_LoginEvent value, $Res Function(_LoginEvent) _then) = __$LoginEventCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class __$LoginEventCopyWithImpl<$Res>
    implements _$LoginEventCopyWith<$Res> {
  __$LoginEventCopyWithImpl(this._self, this._then);

  final _LoginEvent _self;
  final $Res Function(_LoginEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(_LoginEvent(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _RegisterEvent implements AuthEvent {
  const _RegisterEvent(this.name, this.email, this.password);
  

 final  String name;
 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterEventCopyWith<_RegisterEvent> get copyWith => __$RegisterEventCopyWithImpl<_RegisterEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterEvent&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,name,email,password);

@override
String toString() {
  return 'AuthEvent.register(name: $name, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class _$RegisterEventCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory _$RegisterEventCopyWith(_RegisterEvent value, $Res Function(_RegisterEvent) _then) = __$RegisterEventCopyWithImpl;
@useResult
$Res call({
 String name, String email, String password
});




}
/// @nodoc
class __$RegisterEventCopyWithImpl<$Res>
    implements _$RegisterEventCopyWith<$Res> {
  __$RegisterEventCopyWithImpl(this._self, this._then);

  final _RegisterEvent _self;
  final $Res Function(_RegisterEvent) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? password = null,}) {
  return _then(_RegisterEvent(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LogoutEvent implements AuthEvent {
  const _LogoutEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _LoginedState value)?  logined,TResult Function( _ErrorState value)?  error,TResult Function( _LoadingState value)?  loading,TResult Function( _UnloginedState value)?  unlogined,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginedState() when logined != null:
return logined(_that);case _ErrorState() when error != null:
return error(_that);case _LoadingState() when loading != null:
return loading(_that);case _UnloginedState() when unlogined != null:
return unlogined(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _LoginedState value)  logined,required TResult Function( _ErrorState value)  error,required TResult Function( _LoadingState value)  loading,required TResult Function( _UnloginedState value)  unlogined,}){
final _that = this;
switch (_that) {
case _LoginedState():
return logined(_that);case _ErrorState():
return error(_that);case _LoadingState():
return loading(_that);case _UnloginedState():
return unlogined(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _LoginedState value)?  logined,TResult? Function( _ErrorState value)?  error,TResult? Function( _LoadingState value)?  loading,TResult? Function( _UnloginedState value)?  unlogined,}){
final _that = this;
switch (_that) {
case _LoginedState() when logined != null:
return logined(_that);case _ErrorState() when error != null:
return error(_that);case _LoadingState() when loading != null:
return loading(_that);case _UnloginedState() when unlogined != null:
return unlogined(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  logined,TResult Function( String message)?  error,TResult Function()?  loading,TResult Function()?  unlogined,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginedState() when logined != null:
return logined();case _ErrorState() when error != null:
return error(_that.message);case _LoadingState() when loading != null:
return loading();case _UnloginedState() when unlogined != null:
return unlogined();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  logined,required TResult Function( String message)  error,required TResult Function()  loading,required TResult Function()  unlogined,}) {final _that = this;
switch (_that) {
case _LoginedState():
return logined();case _ErrorState():
return error(_that.message);case _LoadingState():
return loading();case _UnloginedState():
return unlogined();case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  logined,TResult? Function( String message)?  error,TResult? Function()?  loading,TResult? Function()?  unlogined,}) {final _that = this;
switch (_that) {
case _LoginedState() when logined != null:
return logined();case _ErrorState() when error != null:
return error(_that.message);case _LoadingState() when loading != null:
return loading();case _UnloginedState() when unlogined != null:
return unlogined();case _:
  return null;

}
}

}

/// @nodoc


class _LoginedState implements AuthState {
  const _LoginedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.logined()';
}


}




/// @nodoc


class _ErrorState implements AuthState {
  const _ErrorState(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorStateCopyWith<_ErrorState> get copyWith => __$ErrorStateCopyWithImpl<_ErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$ErrorStateCopyWith(_ErrorState value, $Res Function(_ErrorState) _then) = __$ErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorStateCopyWithImpl<$Res>
    implements _$ErrorStateCopyWith<$Res> {
  __$ErrorStateCopyWithImpl(this._self, this._then);

  final _ErrorState _self;
  final $Res Function(_ErrorState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LoadingState implements AuthState {
  const _LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class _UnloginedState implements AuthState {
  const _UnloginedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnloginedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unlogined()';
}


}




// dart format on
