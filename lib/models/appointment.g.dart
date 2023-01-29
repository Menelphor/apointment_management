// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appointment _$$_AppointmentFromJson(Map<String, dynamic> json) =>
    _$_Appointment(
      date: DateTime.parse(json['date'] as String),
      company: Company.fromJson(json['company'] as Map<String, dynamic>),
      appointmentState: $enumDecodeNullable(
              _$AppointmentStateEnumMap, json['appointmentState']) ??
          AppointmentState.none,
      durationMinutes: json['durationMinutes'] as int?,
      additionalComment: json['additionalComment'] as String?,
    );

Map<String, dynamic> _$$_AppointmentToJson(_$_Appointment instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'company': instance.company,
      'appointmentState': _$AppointmentStateEnumMap[instance.appointmentState]!,
      'durationMinutes': instance.durationMinutes,
      'additionalComment': instance.additionalComment,
    };

const _$AppointmentStateEnumMap = {
  AppointmentState.none: 'none',
  AppointmentState.cancelledByCustomer: 'cancelledByCustomer',
  AppointmentState.cancelledByUser: 'cancelledByUser',
  AppointmentState.discontinued: 'discontinued',
  AppointmentState.success: 'success',
};
