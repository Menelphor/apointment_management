import 'package:appointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_event.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_state.dart';
import 'package:appointment_management/appointments_overview/view/appointments_list_view.dart';
import 'package:appointment_management/settings/view/settings_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AppointmentsOverviewPage extends StatelessWidget {
  const AppointmentsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppointmentsOverviewBloc(GetIt.I.get())
        ..add(AppointmentsOverviewEvent.initial),
      child: const _AppointmentsOverviewPage(),
    );
  }
}

class _AppointmentsOverviewPage extends StatelessWidget {
  const _AppointmentsOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anstehende Termine'),
        actions: [
          IconButton(
            onPressed: () => navigateToSettings(context),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: BlocBuilder<AppointmentsOverviewBloc, AppointmentsOverviewState>(
        builder: (context, state) {
          switch (state.status) {
            case AppointmentsOverviewStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case AppointmentsOverviewStatus.error:
              return const Center(child: CircularProgressIndicator());
            case AppointmentsOverviewStatus.data:
              return AppointmentsListView(state: state);
          }
        },
      ),
    );
  }

  Future<dynamic> navigateToSettings(BuildContext context) {
    return Navigator.of(context).push(
      SettingsView.route(
        context.read<AppointmentsOverviewBloc>(),
      ),
    );
  }
}
