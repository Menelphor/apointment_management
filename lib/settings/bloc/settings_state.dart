import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

enum AddNewAppointmentsState { loading, finished, none }

@freezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    required bool darkTheme,
    @Default(AddNewAppointmentsState.none)
        AddNewAppointmentsState addNewAppointmentsState,
  }) = _SettingsState;
}
