import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointments_state.freezed.dart';

@Freezed()
class AppointmentsState<T> with _$AppointmentsState<T> {
  const factory AppointmentsState.initial() = _AppointmentsInitial<T>;

  const factory AppointmentsState.loading() = AppointmentsLoading<T>;

  const factory AppointmentsState.success(T data) = AppointmentsSuccess<T>;

  const factory AppointmentsState.error({required String errorMessage}) =
      AppointmentsError<T>;
}
