import 'package:appointment_management/models/appointment_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_detail_event.freezed.dart';

@freezed
class AppointmentDetailEvent with _$AppointmentDetailEvent {
  factory AppointmentDetailEvent.cancel() = CancelAppointmentEvent;

  factory AppointmentDetailEvent.complete() = CompleteAppointmentEvent;

  factory AppointmentDetailEvent.setAppointmentState(
    AppointmentState? appointmentState,
  ) = SetAppointmentStateEvent;

  factory AppointmentDetailEvent.addAdditionalInformation(
    String additionalInformation,
  ) = AddAdditionalInformationEvent;

  factory AppointmentDetailEvent.save() = SaveAppointment;

  factory AppointmentDetailEvent.reset() = ResetAppointment;
}
