import 'package:appointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_event.dart';
import 'package:appointment_management/settings/bloc/settings_cubit.dart';
import 'package:appointment_management/config/dimensions.dart';
import 'package:appointment_management/settings/bloc/settings_state.dart';
import 'package:appointment_management/utils/show_loading_dialog.dart';
import 'package:appointment_management/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsView extends StatelessWidget {
  const SettingsView._();

  static MaterialPageRoute<void> route(
    AppointmentsOverviewBloc appointmentsOverviewBloc,
  ) =>
      MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: appointmentsOverviewBloc,
          child: const SettingsView._(),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Einstellungen'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: Dimensions.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            _AppThemeRow(),
            Gap(),
            _AddNewAppointmentsTile(),
          ],
        ),
      ),
    );
  }
}

class _AddNewAppointmentsTile extends StatelessWidget {
  const _AddNewAppointmentsTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<SettingsCubit, SettingsState>(
      listener: handleAddAppointments,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: const Text('6 Neue Termine im Backend erstellen'),
        onTap: () => addNewAppointments(context),
      ),
    );
  }

  void handleAddAppointments(
    BuildContext context,
    SettingsState state,
  ) {
    if (state.addNewAppointmentsState == AddNewAppointmentsState.loading) {
      showLoadingDialog(context);
    }
    if (state.addNewAppointmentsState == AddNewAppointmentsState.finished) {
      closeLoadingDialog(context);
      context
          .read<AppointmentsOverviewBloc>()
          .add(AppointmentsOverviewEvent.initial);
    }
  }

  Future addNewAppointments(BuildContext context) async {
    context
        .read<AppointmentsOverviewBloc>()
        .add(AppointmentsOverviewEvent.initial);
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 7)),
    );

    if (date != null && context.mounted) {
      context.read<SettingsCubit>().addNewAppointments(date);
    }
  }
}

class _AppThemeRow extends StatelessWidget {
  const _AppThemeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Theme Mode:",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const _ChangeAppThemeButton(),
      ],
    );
  }
}

class _ChangeAppThemeButton extends StatelessWidget {
  const _ChangeAppThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (BuildContext context, state) {
        if (_themeIsDark(state, context)) {
          return IconButton(
            onPressed: () =>
                context.read<SettingsCubit>().setAppTheme(ThemeMode.light),
            icon: const Icon(Icons.light_mode),
          );
        }
        return IconButton(
          onPressed: () =>
              context.read<SettingsCubit>().setAppTheme(ThemeMode.dark),
          icon: const Icon(Icons.dark_mode),
        );
      },
    );
  }

  bool _themeIsDark(SettingsState state, BuildContext context) =>
      state.themeMode == ThemeMode.dark ||
      state.themeMode == ThemeMode.system &&
          Theme.of(context).brightness == Brightness.dark;
}
