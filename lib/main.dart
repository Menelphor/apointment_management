import 'package:apointment_management/appointments_overview/view/appointments_overview_view.dart';
import 'package:apointment_management/dependency_injection.dart';
import 'package:flutter/material.dart';

void main() {
  DependencyInjection.registerSingletons();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const AppointmentsOverviewPage(),
    );
  }
}
