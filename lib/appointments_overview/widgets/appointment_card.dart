import 'package:appointment_management/appointment_detail/view/appointment_detail_page.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:appointment_management/models/appointment.dart';
import 'package:appointment_management/utils/date_parsing_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            AppointmentDetailPage.route(
              context.read<AppointmentsOverviewBloc>(),
              appointment,
            ),
          );
        },
        child: _Content(appointment: appointment),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        children: [
          Expanded(child: _AppointmentDescription(appointment: appointment)),
          const Icon(Icons.chevron_right, size: 36),
        ],
      ),
    );
  }
}

class _AppointmentDescription extends StatelessWidget {
  const _AppointmentDescription({
    Key? key,
    required this.appointment,
  }) : super(key: key);

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          appointment.date.toDateStringForView(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          appointment.company.name,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          'Dauer: ${appointment.durationMinutes.toString()} Minuten',
        ),
        Text(appointment.company.address)
      ],
    );
  }
}
