import 'package:apointment_management/appointments_overview/bloc/appointments_overview_state.dart';
import 'package:apointment_management/appointments_overview/view/appointments_list_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bloc/appointments_overview_bloc.dart';
import '../bloc/appointments_overview_event.dart';

class AppointmentsOverviewPage extends StatelessWidget {
  const AppointmentsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppointmentsOverviewBloc(GetIt.I.get())
        ..add(AppointmentsOverviewEvent.initial),
      child: const AppointmentsOverviewView(),
    );
  }
}

class AppointmentsOverviewView extends StatelessWidget {
  const AppointmentsOverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<AppointmentsOverviewBloc, AppointmentsOverviewState>(
        builder: (context, state) => state.when(
          loading: Container.new,
          error: Container.new,
          data: (appointments, _) => AppointmentsListView(appointments),
        ),
      ),
    );
  }
}
