import 'package:apointment_management/models/appointment_state.dart';
import 'package:apointment_management/models/company.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
class Appointment with _$Appointment {
  factory Appointment({
    required DateTime date,
    required Company company,
    @Default(AppointmentState.none) AppointmentState appointmentState,
    int? durationMinutes,
    String? additionalComment,
  }) = _Appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);
}
