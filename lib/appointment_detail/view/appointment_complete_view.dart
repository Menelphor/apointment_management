import 'package:appointment_management/appointment_detail/bloc/appointment_detail_bloc.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_event.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_state.dart';
import 'package:appointment_management/appointment_detail/widgets/additional_information_text_field.dart';
import 'package:appointment_management/appointment_detail/widgets/bottom_sheet_layout.dart';
import 'package:appointment_management/appointment_detail/widgets/save_appointment_button.dart';
import 'package:appointment_management/models/appointment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentCompleteView extends StatelessWidget {
  const AppointmentCompleteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomSheetLayout(
      text: "Termin abschließen",
      children: [
        _CompleteAppointmentRadio(),
        AdditionalInformationTextField(),
        SaveAppointmentButton(),
      ],
    );
  }
}

class _CompleteAppointmentRadio extends StatelessWidget {
  const _CompleteAppointmentRadio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentDetailBloc, AppointmentDetailState>(
      buildWhen: (previous, current) =>
          previous.appointmentState != current.appointmentState,
      builder: (context, state) {
        return Column(
          children: [
            RadioListTile(
              contentPadding: EdgeInsets.zero,
              value: AppointmentState.cancelledByCustomer,
              groupValue: state.appointmentState,
              title: const Text("erfolgreich"),
              onChanged: (value) => _setAppointmentState(context, value),
            ),
            RadioListTile(
              contentPadding: EdgeInsets.zero,
              value: AppointmentState.cancelledByUser,
              groupValue: state.appointmentState,
              title: const Text("abgebrochen"),
              onChanged: (value) => _setAppointmentState(context, value),
            ),
          ],
        );
      },
    );
  }

  void _setAppointmentState(
    BuildContext context,
    AppointmentState? value,
  ) {
    return context
        .read<AppointmentDetailBloc>()
        .add(AppointmentDetailEvent.setAppointmentState(value));
  }
}
