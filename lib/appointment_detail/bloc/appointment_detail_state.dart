import 'package:appointment_management/models/appointment_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_detail_state.freezed.dart';

@freezed
class AppointmentDetailState with _$AppointmentDetailState {
  factory AppointmentDetailState({
    @Default(AppointmentDetailViewStatus.initial)
        AppointmentDetailViewStatus status,
    @Default(SavingStatus.none) SavingStatus savingStatus,
    AppointmentState? appointmentState,
    String? comment,
  }) = _AppointmentDetailState;
}

enum AppointmentDetailViewStatus {
  initial,
  cancelled,
  completed,
}

enum SavingStatus {
  none,
  saving,
  finished,
  error,
}
