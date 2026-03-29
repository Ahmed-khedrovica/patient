// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specialities_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecialitiesState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialitiesState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecialitiesState<$T>()';
}


}

/// @nodoc
class $SpecialitiesStateCopyWith<T,$Res>  {
$SpecialitiesStateCopyWith(SpecialitiesState<T> _, $Res Function(SpecialitiesState<T>) __);
}


/// Adds pattern-matching-related methods to [SpecialitiesState].
extension SpecialitiesStatePatterns<T> on SpecialitiesState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SpecialitiesInitial<T> value)?  initial,TResult Function( SpecialitiesLoading<T> value)?  loading,TResult Function( SpecialitiesSuccess<T> value)?  success,TResult Function( SpecialitiesError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpecialitiesInitial() when initial != null:
return initial(_that);case SpecialitiesLoading() when loading != null:
return loading(_that);case SpecialitiesSuccess() when success != null:
return success(_that);case SpecialitiesError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SpecialitiesInitial<T> value)  initial,required TResult Function( SpecialitiesLoading<T> value)  loading,required TResult Function( SpecialitiesSuccess<T> value)  success,required TResult Function( SpecialitiesError<T> value)  error,}){
final _that = this;
switch (_that) {
case _SpecialitiesInitial():
return initial(_that);case SpecialitiesLoading():
return loading(_that);case SpecialitiesSuccess():
return success(_that);case SpecialitiesError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SpecialitiesInitial<T> value)?  initial,TResult? Function( SpecialitiesLoading<T> value)?  loading,TResult? Function( SpecialitiesSuccess<T> value)?  success,TResult? Function( SpecialitiesError<T> value)?  error,}){
final _that = this;
switch (_that) {
case _SpecialitiesInitial() when initial != null:
return initial(_that);case SpecialitiesLoading() when loading != null:
return loading(_that);case SpecialitiesSuccess() when success != null:
return success(_that);case SpecialitiesError() when error != null:
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
case _SpecialitiesInitial() when initial != null:
return initial();case SpecialitiesLoading() when loading != null:
return loading();case SpecialitiesSuccess() when success != null:
return success(_that.data);case SpecialitiesError() when error != null:
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
case _SpecialitiesInitial():
return initial();case SpecialitiesLoading():
return loading();case SpecialitiesSuccess():
return success(_that.data);case SpecialitiesError():
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
case _SpecialitiesInitial() when initial != null:
return initial();case SpecialitiesLoading() when loading != null:
return loading();case SpecialitiesSuccess() when success != null:
return success(_that.data);case SpecialitiesError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SpecialitiesInitial<T> implements SpecialitiesState<T> {
  const _SpecialitiesInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecialitiesInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecialitiesState<$T>.initial()';
}


}




/// @nodoc


class SpecialitiesLoading<T> implements SpecialitiesState<T> {
  const SpecialitiesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialitiesLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SpecialitiesState<$T>.loading()';
}


}




/// @nodoc


class SpecialitiesSuccess<T> implements SpecialitiesState<T> {
  const SpecialitiesSuccess(this.data);
  

 final  T data;

/// Create a copy of SpecialitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialitiesSuccessCopyWith<T, SpecialitiesSuccess<T>> get copyWith => _$SpecialitiesSuccessCopyWithImpl<T, SpecialitiesSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialitiesSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SpecialitiesState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $SpecialitiesSuccessCopyWith<T,$Res> implements $SpecialitiesStateCopyWith<T, $Res> {
  factory $SpecialitiesSuccessCopyWith(SpecialitiesSuccess<T> value, $Res Function(SpecialitiesSuccess<T>) _then) = _$SpecialitiesSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$SpecialitiesSuccessCopyWithImpl<T,$Res>
    implements $SpecialitiesSuccessCopyWith<T, $Res> {
  _$SpecialitiesSuccessCopyWithImpl(this._self, this._then);

  final SpecialitiesSuccess<T> _self;
  final $Res Function(SpecialitiesSuccess<T>) _then;

/// Create a copy of SpecialitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(SpecialitiesSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class SpecialitiesError<T> implements SpecialitiesState<T> {
  const SpecialitiesError({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of SpecialitiesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecialitiesErrorCopyWith<T, SpecialitiesError<T>> get copyWith => _$SpecialitiesErrorCopyWithImpl<T, SpecialitiesError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecialitiesError<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'SpecialitiesState<$T>.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SpecialitiesErrorCopyWith<T,$Res> implements $SpecialitiesStateCopyWith<T, $Res> {
  factory $SpecialitiesErrorCopyWith(SpecialitiesError<T> value, $Res Function(SpecialitiesError<T>) _then) = _$SpecialitiesErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$SpecialitiesErrorCopyWithImpl<T,$Res>
    implements $SpecialitiesErrorCopyWith<T, $Res> {
  _$SpecialitiesErrorCopyWithImpl(this._self, this._then);

  final SpecialitiesError<T> _self;
  final $Res Function(SpecialitiesError<T>) _then;

/// Create a copy of SpecialitiesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(SpecialitiesError<T>(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
