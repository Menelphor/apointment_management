import 'package:appointment_management/appointment_detail/bloc/appointment_detail_bloc.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_event.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_state.dart';
import 'package:appointment_management/appointment_detail/view/appointment_cancel_view.dart';
import 'package:appointment_management/appointment_detail/view/appointment_complete_view.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_event.dart';
import 'package:appointment_management/config/dimensions.dart';
import 'package:appointment_management/dependency_injection.dart';
import 'package:appointment_management/models/appointment.dart';
import 'package:appointment_management/utils/show_loading_dialog.dart';
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
      body: Padding(
        padding: Dimensions.screenPadding,
        child: BlocListener<AppointmentDetailBloc, AppointmentDetailState>(
          listenWhen: (previous, next) => previous.status != next.status,
          listener: _showCancelOrCompleteBottomSheet,
          child: BlocListener<AppointmentDetailBloc, AppointmentDetailState>(
            listenWhen: (previous, current) =>
                previous.savingStatus != current.savingStatus,
            listener: _handleSaveAppointment,
            child: AppointmentDetailView(appointment: appointment),
          ),
        ),
      ),
    );
  }

  void _handleSaveAppointment(
    BuildContext context,
    AppointmentDetailState state,
  ) {
    switch (state.savingStatus) {
      case SavingStatus.saving:
        showLoadingDialog(context);
        break;
      case SavingStatus.none:
      case SavingStatus.error:
        closeLoadingDialog(context);
        break;
      case SavingStatus.finished:
        context
            .read<AppointmentsOverviewBloc>()
            .add(AppointmentsOverviewEvent.initial);
        Navigator.of(context).popUntil((route) => route.isFirst);
        break;
    }
  }

  void _showCancelOrCompleteBottomSheet(
    BuildContext context,
    AppointmentDetailState state,
  ) async {
    if (state.status == AppointmentDetailViewStatus.cancelled) {
      await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) => BlocProvider.value(
          value: context.read<AppointmentDetailBloc>(),
          child: const AppointmentCancelView(),
        ),
      );
      if (context.mounted) {
        _resetState(context);
      }
    } else if (state.status == AppointmentDetailViewStatus.completed) {
      await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) => BlocProvider.value(
          value: context.read<AppointmentDetailBloc>(),
          child: const AppointmentCompleteView(),
        ),
      );
      if (context.mounted) {
        _resetState(context);
      }
    }
  }

  void _resetState(BuildContext context) {
    context.read<AppointmentDetailBloc>().add(AppointmentDetailEvent.reset());
  }
}
