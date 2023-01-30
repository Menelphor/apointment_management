import 'dart:async';

import 'package:appointment_management/appointments_overview/bloc/appointments_overview_event.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_state.dart';
import 'package:appointment_management/service/appointment_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentsOverviewBloc
    extends Bloc<AppointmentsOverviewEvent, AppointmentsOverviewState> {
  final AppointmentService appointmentService;

  AppointmentsOverviewBloc(this.appointmentService)
      : super(
          AppointmentsOverviewState(status: AppointmentsOverviewStatus.loading),
        ) {
    on(fetchAppointments);
  }

  Future<void> fetchAppointments(
    AppointmentsOverviewEvent event,
    Emitter<AppointmentsOverviewState> emit,
  ) async {
    switch (event) {
      case AppointmentsOverviewEvent.initial:
        await getInitialAppointments(emit);
        break;
      case AppointmentsOverviewEvent.fetchMore:
        await fetchMore(emit);
        break;
    }
  }

  Future<void> fetchMore(
    Emitter<AppointmentsOverviewState> emit,
  ) async {
    int offset = state.appointments.length;
    final newAppointments = await appointmentService.getAppointments(offset);
    if (newAppointments.isEmpty) {
      emit(state.copyWith(hasReachedMax: true));
    } else {
      emit(
        state.copyWith(
          status: AppointmentsOverviewStatus.data,
          appointments: List.of(state.appointments)..addAll(newAppointments),
          hasReachedMax: newAppointments.length < 10,
        ),
      );
    }
  }

  Future<void> getInitialAppointments(
    Emitter<AppointmentsOverviewState> emit,
  ) async {
    try {
      final appointments = await appointmentService.getAppointments(0);
      emit(
        AppointmentsOverviewState(
          appointments: appointments,
          status: AppointmentsOverviewStatus.data,
          hasReachedMax: appointments.length < 10,
        ),
      );
    } catch (e) {
      emit(AppointmentsOverviewState(status: AppointmentsOverviewStatus.error));
    }
  }

  @override
  void onChange(Change<AppointmentsOverviewState> change) {
    debugPrint(
      "Overview Bloc Change: ${change.currentState} ${change.nextState}",
    );
    super.onChange(change);
  }

  @override
  void onEvent(AppointmentsOverviewEvent event) {
    debugPrint("Overview Bloc Event: $event");
    super.onEvent(event);
  }
}
