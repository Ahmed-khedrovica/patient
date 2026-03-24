import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@Freezed()
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _ProfileInitial<T>;

  const factory ProfileState.loading() = ProfileLoading<T>;

  const factory ProfileState.success(T data) = ProfileSuccess<T>;

  const factory ProfileState.error({required String errorMessage}) =
      ProfileError<T>;
}
