import 'package:appointment_management/appointment_detail/bloc/appointment_detail_bloc.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_event.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_state.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_event.dart';
import 'package:appointment_management/utils/show_loading_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveAppointmentButton extends StatelessWidget {
  const SaveAppointmentButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AppointmentDetailBloc, AppointmentDetailState>(
      listenWhen: (previous, current) =>
          previous.savingStatus != current.savingStatus,
      listener: _handleSaveAppointment,
      child: ElevatedButton(
        onPressed: () => context
            .read<AppointmentDetailBloc>()
            .add(AppointmentDetailEvent.save()),
        child: Text(text),
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
}
