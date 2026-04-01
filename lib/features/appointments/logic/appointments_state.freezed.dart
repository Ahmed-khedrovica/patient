// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appointments_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppointmentsState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentsState<$T>()';
}


}

/// @nodoc
class $AppointmentsStateCopyWith<T,$Res>  {
$AppointmentsStateCopyWith(AppointmentsState<T> _, $Res Function(AppointmentsState<T>) __);
}


/// Adds pattern-matching-related methods to [AppointmentsState].
extension AppointmentsStatePatterns<T> on AppointmentsState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AppointmentsInitial<T> value)?  initial,TResult Function( AppointmentsLoading<T> value)?  loading,TResult Function( AppointmentsSuccess<T> value)?  success,TResult Function( AppointmentsError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppointmentsInitial() when initial != null:
return initial(_that);case AppointmentsLoading() when loading != null:
return loading(_that);case AppointmentsSuccess() when success != null:
return success(_that);case AppointmentsError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AppointmentsInitial<T> value)  initial,required TResult Function( AppointmentsLoading<T> value)  loading,required TResult Function( AppointmentsSuccess<T> value)  success,required TResult Function( AppointmentsError<T> value)  error,}){
final _that = this;
switch (_that) {
case _AppointmentsInitial():
return initial(_that);case AppointmentsLoading():
return loading(_that);case AppointmentsSuccess():
return success(_that);case AppointmentsError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AppointmentsInitial<T> value)?  initial,TResult? Function( AppointmentsLoading<T> value)?  loading,TResult? Function( AppointmentsSuccess<T> value)?  success,TResult? Function( AppointmentsError<T> value)?  error,}){
final _that = this;
switch (_that) {
case _AppointmentsInitial() when initial != null:
return initial(_that);case AppointmentsLoading() when loading != null:
return loading(_that);case AppointmentsSuccess() when success != null:
return success(_that);case AppointmentsError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( T data)?  success,TResult Function( String errorMessage)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppointmentsInitial() when initial != null:
return initial();case AppointmentsLoading() when loading != null:
return loading();case AppointmentsSuccess() when success != null:
return success(_that.data);case AppointmentsError() when error != null:
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( T data)  success,required TResult Function( String errorMessage)  error,}) {final _that = this;
switch (_that) {
case _AppointmentsInitial():
return initial();case AppointmentsLoading():
return loading();case AppointmentsSuccess():
return success(_that.data);case AppointmentsError():
return error(_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( T data)?  success,TResult? Function( String errorMessage)?  error,}) {final _that = this;
switch (_that) {
case _AppointmentsInitial() when initial != null:
return initial();case AppointmentsLoading() when loading != null:
return loading();case AppointmentsSuccess() when success != null:
return success(_that.data);case AppointmentsError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AppointmentsInitial<T> implements AppointmentsState<T> {
  const _AppointmentsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppointmentsInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentsState<$T>.initial()';
}


}




/// @nodoc


class AppointmentsLoading<T> implements AppointmentsState<T> {
  const AppointmentsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppointmentsState<$T>.loading()';
}


}




/// @nodoc


class AppointmentsSuccess<T> implements AppointmentsState<T> {
  const AppointmentsSuccess(this.data);
  

 final  T data;

/// Create a copy of AppointmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentsSuccessCopyWith<T, AppointmentsSuccess<T>> get copyWith => _$AppointmentsSuccessCopyWithImpl<T, AppointmentsSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'AppointmentsState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $AppointmentsSuccessCopyWith<T,$Res> implements $AppointmentsStateCopyWith<T, $Res> {
  factory $AppointmentsSuccessCopyWith(AppointmentsSuccess<T> value, $Res Function(AppointmentsSuccess<T>) _then) = _$AppointmentsSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$AppointmentsSuccessCopyWithImpl<T,$Res>
    implements $AppointmentsSuccessCopyWith<T, $Res> {
  _$AppointmentsSuccessCopyWithImpl(this._self, this._then);

  final AppointmentsSuccess<T> _self;
  final $Res Function(AppointmentsSuccess<T>) _then;

/// Create a copy of AppointmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(AppointmentsSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class AppointmentsError<T> implements AppointmentsState<T> {
  const AppointmentsError({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of AppointmentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppointmentsErrorCopyWith<T, AppointmentsError<T>> get copyWith => _$AppointmentsErrorCopyWithImpl<T, AppointmentsError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppointmentsError<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AppointmentsState<$T>.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AppointmentsErrorCopyWith<T,$Res> implements $AppointmentsStateCopyWith<T, $Res> {
  factory $AppointmentsErrorCopyWith(AppointmentsError<T> value, $Res Function(AppointmentsError<T>) _then) = _$AppointmentsErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$AppointmentsErrorCopyWithImpl<T,$Res>
    implements $AppointmentsErrorCopyWith<T, $Res> {
  _$AppointmentsErrorCopyWithImpl(this._self, this._then);

  final AppointmentsError<T> _self;
  final $Res Function(AppointmentsError<T>) _then;

/// Create a copy of AppointmentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(AppointmentsError<T>(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
