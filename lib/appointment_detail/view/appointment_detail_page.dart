import 'package:appointment_management/appointment_detail/bloc/appointment_detail_bloc.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_state.dart';
import 'package:appointment_management/appointment_detail/view/appointment_cancel_view.dart';
import 'package:appointment_management/appointment_detail/view/appointment_complete_view.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:appointment_management/dependency_injection.dart';
import 'package:appointment_management/models/appointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'appointment_detail_view.dart';

class AppointmentDetailPage extends StatelessWidget {
  const AppointmentDetailPage._({
    Key? key,
    required this.appointment,
  }) : super(key: key);
  final Appointment appointment;

  static MaterialPageRoute<void> route(
    AppointmentsOverviewBloc appointmentsOverviewBloc,
    Appointment appointment,
  ) {
    return MaterialPageRoute(
      builder: (context) => BlocProvider.value(
        value: appointmentsOverviewBloc,
        child: BlocProvider(
          create: (context) => AppointmentDetailBloc(
            appointment.id,
            DependencyInjection.appointmentService,
          ),
          child: AppointmentDetailPage._(appointment: appointment),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("Termin"),
      ),
      body: BlocBuilder<AppointmentDetailBloc, AppointmentDetailState>(
          builder: (context, state) {
        switch (state.status) {
          case AppointmentDetailViewStatus.initial:
            return AppointmentDetailView(appointment: appointment);
          case AppointmentDetailViewStatus.cancelled:
            return const AppointmentCancelView();
          case AppointmentDetailViewStatus.completed:
            return const AppointmentCompleteView();
        }
      }),
    );
  }
}
