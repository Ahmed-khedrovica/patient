// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState<$T>()';
}


}

/// @nodoc
class $ProfileStateCopyWith<T,$Res>  {
$ProfileStateCopyWith(ProfileState<T> _, $Res Function(ProfileState<T>) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns<T> on ProfileState<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProfileInitial<T> value)?  initial,TResult Function( ProfileLoading<T> value)?  loading,TResult Function( ProfileSuccess<T> value)?  success,TResult Function( ProfileError<T> value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileInitial() when initial != null:
return initial(_that);case ProfileLoading() when loading != null:
return loading(_that);case ProfileSuccess() when success != null:
return success(_that);case ProfileError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProfileInitial<T> value)  initial,required TResult Function( ProfileLoading<T> value)  loading,required TResult Function( ProfileSuccess<T> value)  success,required TResult Function( ProfileError<T> value)  error,}){
final _that = this;
switch (_that) {
case _ProfileInitial():
return initial(_that);case ProfileLoading():
return loading(_that);case ProfileSuccess():
return success(_that);case ProfileError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProfileInitial<T> value)?  initial,TResult? Function( ProfileLoading<T> value)?  loading,TResult? Function( ProfileSuccess<T> value)?  success,TResult? Function( ProfileError<T> value)?  error,}){
final _that = this;
switch (_that) {
case _ProfileInitial() when initial != null:
return initial(_that);case ProfileLoading() when loading != null:
return loading(_that);case ProfileSuccess() when success != null:
return success(_that);case ProfileError() when error != null:
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
case _ProfileInitial() when initial != null:
return initial();case ProfileLoading() when loading != null:
return loading();case ProfileSuccess() when success != null:
return success(_that.data);case ProfileError() when error != null:
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
case _ProfileInitial():
return initial();case ProfileLoading():
return loading();case ProfileSuccess():
return success(_that.data);case ProfileError():
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
case _ProfileInitial() when initial != null:
return initial();case ProfileLoading() when loading != null:
return loading();case ProfileSuccess() when success != null:
return success(_that.data);case ProfileError() when error != null:
return error(_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileInitial<T> implements ProfileState<T> {
  const _ProfileInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileInitial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState<$T>.initial()';
}


}




/// @nodoc


class ProfileLoading<T> implements ProfileState<T> {
  const ProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState<$T>.loading()';
}


}




/// @nodoc


class ProfileSuccess<T> implements ProfileState<T> {
  const ProfileSuccess(this.data);
  

 final  T data;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSuccessCopyWith<T, ProfileSuccess<T>> get copyWith => _$ProfileSuccessCopyWithImpl<T, ProfileSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'ProfileState<$T>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class $ProfileSuccessCopyWith<T,$Res> implements $ProfileStateCopyWith<T, $Res> {
  factory $ProfileSuccessCopyWith(ProfileSuccess<T> value, $Res Function(ProfileSuccess<T>) _then) = _$ProfileSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class _$ProfileSuccessCopyWithImpl<T,$Res>
    implements $ProfileSuccessCopyWith<T, $Res> {
  _$ProfileSuccessCopyWithImpl(this._self, this._then);

  final ProfileSuccess<T> _self;
  final $Res Function(ProfileSuccess<T>) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(ProfileSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class ProfileError<T> implements ProfileState<T> {
  const ProfileError({required this.errorMessage});
  

 final  String errorMessage;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileErrorCopyWith<T, ProfileError<T>> get copyWith => _$ProfileErrorCopyWithImpl<T, ProfileError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileError<T>&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'ProfileState<$T>.error(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ProfileErrorCopyWith<T,$Res> implements $ProfileStateCopyWith<T, $Res> {
  factory $ProfileErrorCopyWith(ProfileError<T> value, $Res Function(ProfileError<T>) _then) = _$ProfileErrorCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$ProfileErrorCopyWithImpl<T,$Res>
    implements $ProfileErrorCopyWith<T, $Res> {
  _$ProfileErrorCopyWithImpl(this._self, this._then);

  final ProfileError<T> _self;
  final $Res Function(ProfileError<T>) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(ProfileError<T>(
errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
