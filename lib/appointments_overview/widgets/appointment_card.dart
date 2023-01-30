import 'package:apointment_management/models/appointment.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
    required this.appointment,
  });

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(appointment.date.toString()),
          Text(appointment.durationMinutes.toString()),
          Text(appointment.company.name),
          Text(appointment.company.street),
        ],
      ),
    );
  }
}
