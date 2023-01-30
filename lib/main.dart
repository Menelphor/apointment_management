import 'package:appointment_management/appointments_overview/view/appointments_overview_view.dart';
import 'package:appointment_management/dependency_injection.dart';
import 'package:appointment_management/settings/bloc/settings_cubit.dart';
import 'package:appointment_management/settings/bloc/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() {
  DependencyInjection.registerSingletons();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(GetIt.I.get()),
      child: const MyMaterialApp(),
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) => MaterialApp(
        title: 'Flutter Demo',
        themeMode: state.darkTheme ? ThemeMode.dark : ThemeMode.light,
        darkTheme: ThemeData.dark(
          useMaterial3: true,
        ),
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const AppointmentsOverviewPage(),
      ),
    );
  }
}
