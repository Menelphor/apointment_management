import 'package:apointment_management/models/appointment.dart';
import 'package:apointment_management/config/dimensions.dart';
import 'package:flutter/material.dart';

class AppointmentsListView extends StatelessWidget {
  const AppointmentsListView(this.appointments, {super.key});

  final List<Appointment> appointments;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimensions.screenPadding,
      children: [
        for (final appointment in appointments)
          Card(
            child: Column(
              children: [
                Text(appointment.date.toString()),
                Text(appointment.durationMinutes.toString()),
                Text(appointment.company.name),
                Text(appointment.company.street),
              ],
            ),
          ),
      ],
    );
  }
}
