import 'package:appointment_management/appointment_detail/bloc/appointment_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/appointment_detail_event.dart';

class AdditionalInformationTextField extends StatelessWidget {
  const AdditionalInformationTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: 5,
      maxLines: 10,
      onChanged: (text) => context
          .read<AppointmentDetailBloc>()
          .add(AppointmentDetailEvent.addAdditionalInformation(text)),
    );
  }
}
