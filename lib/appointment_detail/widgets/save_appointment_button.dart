import 'package:appointment_management/appointment_detail/bloc/appointment_detail_bloc.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_event.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SaveAppointmentButton extends StatelessWidget {
  const SaveAppointmentButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentDetailBloc, AppointmentDetailState>(
      builder: (context, state) => FilledButton(
        onPressed: state.appointmentState == null
            ? null
            : () => context
                .read<AppointmentDetailBloc>()
                .add(AppointmentDetailEvent.save()),
        child: const Text("Speichern"),
      ),
    );
  }
}
