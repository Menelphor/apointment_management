import 'package:appointment_management/appointment_detail/bloc/appointment_detail_bloc.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_event.dart';
import 'package:appointment_management/config/dimensions.dart';
import 'package:appointment_management/models/appointment.dart';
import 'package:appointment_management/utils/date_parsing_extension.dart';
import 'package:appointment_management/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AppointmentDetailView extends StatelessWidget {
  const AppointmentDetailView({super.key, required this.appointment});
  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Card(
          child: Padding(
            padding: Dimensions.cardPadding,
            child: _AppointmentDetails(appointment: appointment),
          ),
        ),
        const _DetailButtons(),
      ],
    );
  }
}

class _DetailButtons extends StatelessWidget {
  const _DetailButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () => context
              .read<AppointmentDetailBloc>()
              .add(AppointmentDetailEvent.complete()),
          child: const Text("Termin abschließen"),
        ),
        const Gap(),
        OutlinedButton(
          onPressed: () => context
              .read<AppointmentDetailBloc>()
              .add(AppointmentDetailEvent.cancel()),
          child: const Text("Termin absagen"),
        ),
      ],
    );
  }
}

class _AppointmentDetails extends StatelessWidget {
  const _AppointmentDetails({Key? key, required this.appointment})
      : super(key: key);
  final Appointment appointment;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          appointment.date.toDateStringForView(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "Dauer:",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text("${appointment.durationMinutes.toString()} Minuten"),
        const Gap(),
        Text(
          "Adresse:",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(appointment.company.name),
        Text(
          "${appointment.company.street} ${appointment.company.houseNumber}",
        ),
        Text(
          "${appointment.company.postCode} ${appointment.company.city}",
        ),
        const Gap(),
        Text(
          "Ansprechperson:",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(appointment.company.contact),
      ],
    );
  }
}
