import 'package:appointment_management/appointment_detail/bloc/appointment_detail_bloc.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_event.dart';
import 'package:appointment_management/config/dimensions.dart';
import 'package:appointment_management/dependency_injection.dart';
import 'package:appointment_management/models/appointment.dart';
import 'package:appointment_management/utils/date_parsing_extension.dart';
import 'package:appointment_management/widgets/gap.dart';
import 'package:appointment_management/widgets/map_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AppointmentDetailView extends StatelessWidget {
  const AppointmentDetailView({super.key, required this.appointment});
  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, viewport) {
        return SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: viewport.maxHeight),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _AppointmentDetailCard(appointment: appointment),
                    const _DetailButtons(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _AppointmentDetailCard extends StatelessWidget {
  const _AppointmentDetailCard({
    Key? key,
    required this.appointment,
  }) : super(key: key);
  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LatLng?>(
      future: DependencyInjection.locationGeocoderService
          .getCoordinates(appointment.company),
      builder: (BuildContext context, AsyncSnapshot<LatLng?> snapshot) {
        return Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MapCard(coordinates: snapshot.data),
              Padding(
                padding: Dimensions.cardPadding.copyWith(bottom: 8),
                child: _AppointmentDetails(appointment: appointment),
              ),
              Padding(
                padding: Dimensions.cardPadding.copyWith(top: 8),
                child: OutlinedButton(
                  onPressed: snapshot.data == null
                      ? null
                      : () => openNavigation(context, snapshot.data!.latitude,
                          snapshot.data!.longitude),
                  child: const Text("Navigation Starten"),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static Future<void> openNavigation(
    BuildContext context,
    double lat,
    double lng,
  ) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
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
        FilledButton(
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
