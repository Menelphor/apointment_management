import 'package:appointment_management/models/appointment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointments_overview_state.freezed.dart';

@freezed
class AppointmentsOverviewState with _$AppointmentsOverviewState {
  factory AppointmentsOverviewState({
    @Default([]) List<Appointment> appointments,
    @Default(false) bool hasReachedMax,
    required AppointmentsOverviewStatus status,
  }) = _AppointmentsOverviewState;
}

enum AppointmentsOverviewStatus { loading, data, error }
