import 'package:apointment_management/models/appointment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointments_overview_state.freezed.dart';

@freezed
class AppointmentsOverviewState with _$AppointmentsOverviewState {
  factory AppointmentsOverviewState.loading() = _AppointmentsOverviewLoading;
  factory AppointmentsOverviewState.data({
    required List<Appointment> appointments,
    @Default(0) int offset,
    @Default(false) bool hasReachedMax,
  }) = AppointmentsOverviewData;
  factory AppointmentsOverviewState.error() = _AppointmentsOverviewError;
}
