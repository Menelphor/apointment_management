import 'package:appointment_management/appointments_overview/view/appointments_overview_page.dart';
import 'package:appointment_management/config/theme.dart';
import 'package:appointment_management/dependency_injection.dart';
import 'package:appointment_management/settings/bloc/settings_cubit.dart';
import 'package:appointment_management/settings/bloc/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  DependencyInjection.registerSingletons();
  await initializeDateFormatting('de_DE', null);
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
  const MyMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) => MaterialApp(
        title: 'Appointment Management',
        themeMode: state.darkTheme ? ThemeMode.dark : ThemeMode.light,
        darkTheme: darkTheme,
        theme: lightTheme,
        home: const AppointmentsOverviewPage(),
      ),
    );
  }
}
