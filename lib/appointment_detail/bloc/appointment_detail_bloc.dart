import 'dart:async';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_event.dart';
import 'package:appointment_management/appointment_detail/bloc/appointment_detail_state.dart';
import 'package:appointment_management/service/appointment_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentDetailBloc
    extends Bloc<AppointmentDetailEvent, AppointmentDetailState> {
  final AppointmentService appointmentService;
  final String appointmentId;

  AppointmentDetailBloc(
    this.appointmentId,
    this.appointmentService,
  ) : super(AppointmentDetailState()) {
    on<CancelAppointmentEvent>(_setCancelAppointmentState);
    on<CompleteAppointmentEvent>(_setCompleteAppointmentState);
    on<SetAppointmentStateEvent>(_setAppointmentState);
    on<AddAdditionalInformationEvent>(_setAdditionalInformationText);
    on<SaveAppointment>(_saveAppointment);
    on<ResetAppointment>(_resetAppointment);
  }

  FutureOr<void> _resetAppointment(event, emit) =>
      emit(AppointmentDetailState());

  FutureOr<void> _setAdditionalInformationText(event, emit) => emit(
        state.copyWith(comment: event.additionalInformation),
      );

  FutureOr<void> _setAppointmentState(event, emit) => emit(
        state.copyWith(appointmentState: event.appointmentState),
      );

  FutureOr<void> _setCompleteAppointmentState(event, emit) => emit(
        AppointmentDetailState(status: AppointmentDetailViewStatus.completed),
      );

  FutureOr<void> _setCancelAppointmentState(event, emit) => emit(
        AppointmentDetailState(status: AppointmentDetailViewStatus.cancelled),
      );

  FutureOr<void> _saveAppointment(event, emit) async {
    if (state.appointmentState == null) {
      emit(state.copyWith(savingStatus: SavingStatus.error));
      return;
    }

    emit(state.copyWith(savingStatus: SavingStatus.saving));
    final success = await appointmentService.patchAppointment(
      appointmentId,
      state.appointmentState!,
      state.comment,
    );
    if (success) {
      emit(state.copyWith(savingStatus: SavingStatus.finished));
    } else {
      emit(state.copyWith(savingStatus: SavingStatus.error));
    }
  }

  @override
  void onChange(Change<AppointmentDetailState> change) {
    debugPrint(
      "Detail Bloc Change: ${change.currentState} ${change.nextState}",
    );
    super.onChange(change);
  }

  @override
  void onEvent(AppointmentDetailEvent event) {
    debugPrint("Detail Bloc Event: $event");
    super.onEvent(event);
  }
}
