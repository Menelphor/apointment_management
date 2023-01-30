import 'package:apointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:apointment_management/appointments_overview/bloc/appointments_overview_event.dart';
import 'package:apointment_management/appointments_overview/bloc/appointments_overview_state.dart';
import 'package:apointment_management/appointments_overview/widgets/appointment_card.dart';
import 'package:apointment_management/appointments_overview/widgets/bottom_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentsListView extends StatefulWidget {
  const AppointmentsListView({super.key});

  @override
  State<AppointmentsListView> createState() => _AppointmentsListViewState();
}

class _AppointmentsListViewState extends State<AppointmentsListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentsOverviewBloc, AppointmentsOverviewState>(
      builder: (context, state) => state.map(
        loading: (_) => const CircularProgressIndicator(),
        error: (_) => const Center(
          child: Text('Termine konnten nicht geladen werden'),
        ),
        data: (state) {
          return ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return index >= state.appointments.length
                  ? const BottomLoader()
                  : AppointmentCard(appointment: state.appointments[index]);
            },
            itemCount: state.hasReachedMax
                ? state.appointments.length
                : state.appointments.length + 1,
            controller: _scrollController,
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom)
      context
          .read<AppointmentsOverviewBloc>()
          .add(AppointmentsOverviewEvent.fetchMore);
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }
}
