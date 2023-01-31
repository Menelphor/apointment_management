import 'package:appointment_management/appointments_overview/bloc/appointments_overview_bloc.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_event.dart';
import 'package:appointment_management/appointments_overview/bloc/appointments_overview_state.dart';
import 'package:appointment_management/appointments_overview/widgets/appointment_card.dart';
import 'package:appointment_management/appointments_overview/widgets/bottom_loader.dart';
import 'package:appointment_management/config/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentsListView extends StatefulWidget {
  const AppointmentsListView({
    Key? key,
    required this.state,
  }) : super(key: key);

  final AppointmentsOverviewState state;

  @override
  State<AppointmentsListView> createState() => _AppointmentsListViewState();
}

class _AppointmentsListViewState extends State<AppointmentsListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_scrollController.position.maxScrollExtent == 0) {
        _fetchMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimensions.screenPadding,
      controller: _scrollController,
      children: [
        for (final appointment in widget.state.appointments)
          AppointmentCard(appointment: appointment),
        if (!widget.state.hasReachedMax) const BottomLoader()
      ],
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
    if (_isBottom) {
      _fetchMore();
    }
  }

  void _fetchMore() {
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
