import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialities_state.freezed.dart';

@Freezed()
class SpecialitiesState<T> with _$SpecialitiesState<T> {
  const factory SpecialitiesState.initial() = _SpecialitiesInitial<T>;

  const factory SpecialitiesState.loading() = SpecialitiesLoading<T>;

  const factory SpecialitiesState.success(T data) = SpecialitiesSuccess<T>;

  const factory SpecialitiesState.error({required String errorMessage}) =
      SpecialitiesError<T>;
}
