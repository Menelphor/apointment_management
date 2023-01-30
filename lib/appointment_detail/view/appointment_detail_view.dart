import 'package:appointment_management/models/appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/appointment_detail_bloc.dart';
import '../bloc/appointment_detail_event.dart';

class AppointmentDetailView extends StatelessWidget {
  const AppointmentDetailView({super.key, required this.appointment});
  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          child: Column(
            children: [
              Text(appointment.date.toString()),
              Text(appointment.durationMinutes.toString()),
              Text(appointment.company.name),
              Text(
                "${appointment.company.street} ${appointment.company.houseNumber}",
              ),
              Text(
                "${appointment.company.postCode} ${appointment.company.city}",
              ),
              Text(appointment.company.contact),
            ],
          ),
        ),
        Column(
          children: [
            ElevatedButton(
              onPressed: () => context
                  .read<AppointmentDetailBloc>()
                  .add(AppointmentDetailEvent.complete()),
              child: const Text("Termin abschließen"),
            ),
            const SizedBox.square(dimension: 8),
            OutlinedButton(
              onPressed: () => context
                  .read<AppointmentDetailBloc>()
                  .add(AppointmentDetailEvent.cancel()),
              child: const Text("Termin absagen"),
            ),
          ],
        )
      ],
    );
  }
}
