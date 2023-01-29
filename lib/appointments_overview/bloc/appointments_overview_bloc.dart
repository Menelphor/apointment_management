import 'package:apointment_management/appointments_overview/bloc/appointments_overview_event.dart';
import 'package:apointment_management/appointments_overview/bloc/appointments_overview_state.dart';
import 'package:apointment_management/service/appointment_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentsOverviewBloc
    extends Bloc<AppointmentsOverviewEvent, AppointmentsOverviewState> {
  AppointmentsOverviewBloc(this.appointmentService)
      : super(AppointmentsOverviewState.loading()) {
    on(fetchAppointments);
  }

  final AppointmentService appointmentService;

  Future<void> fetchAppointments(
    AppointmentsOverviewEvent event,
    Emitter<AppointmentsOverviewState> emit,
  ) async {
    switch (event) {
      case AppointmentsOverviewEvent.initial:
        await getInitialAppointments(emit);
        break;
      case AppointmentsOverviewEvent.fetchMore:
        state.map(
          loading: (_) {},
          error: (_) => getInitialAppointments(emit),
          data: (data) => fetchMore(data, emit),
        );
        break;
    }
  }

  Future<void> fetchMore(
    AppointmentsOverviewData data,
    Emitter<AppointmentsOverviewState> emit,
  ) async {
    int offset = data.offset + 10;
    final newAppointments = await appointmentService.getAppointments(offset);
    final appointments = data.appointments..addAll(newAppointments);

    emit(
      AppointmentsOverviewState.data(
        appointments,
        offset,
      ),
    );
  }

  Future<void> getInitialAppointments(
    Emitter<AppointmentsOverviewState> emit,
  ) async {
    final appointments = await appointmentService.getAppointments(0);
    emit(AppointmentsOverviewState.data(appointments, 0));
  }
}
