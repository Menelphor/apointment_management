import 'dart:async';
import 'package:apointment_management/service/appointment_service.dart';
import 'package:apointment_management/settings/bloc/settings_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this.appointmentService)
      : super(SettingsState(darkTheme: false));

  final AppointmentService appointmentService;

  FutureOr<void> addNewAppointments(DateTime date) async {
    final now = DateTime.now();
    emit(
      state.copyWith(addNewAppointmentsState: AddNewAppointmentsState.loading),
    );
    final companies = await appointmentService.getCompanies();
    var startDate = date.copyWith(
      hour: 9,
      minute: 0,
      second: 0,
      millisecond: 0,
      microsecond: 0,
    );

    final futures = <Future>[];
    for (int index = 0; index < 3; index++) {
      final duration = (index + 1) * 30;
      for (final company in companies) {
        futures.add(appointmentService.createAppointment(
          company.id,
          duration,
          startDate,
        ));
        startDate = startDate.add(Duration(minutes: duration));
      }
    }
    await Future.wait(futures);
    emit(
      state.copyWith(addNewAppointmentsState: AddNewAppointmentsState.finished),
    );
    print(DateTime.now().difference(now));
  }

  void setAppTheme(bool value) => emit(SettingsState(darkTheme: value));
}
