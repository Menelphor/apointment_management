import 'package:appointment_management/appointment_detail/view/appointment_detail_page.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:appointment_management/models/appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key,
    required this.appointment,
  });

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            AppointmentDetailPage.route(
              context.read<AppointmentsOverviewBloc>(),
              appointment,
            ),
          );
        },
        child: Column(
          children: [
            Text(appointment.date.toString()),
            Text(appointment.durationMinutes.toString()),
            Text(appointment.company.name),
            Text(appointment.company.street),
          ],
        ),
      ),
    );
  }
}
