import 'package:apointment_management/dependency_injection.dart';
import 'package:flutter/material.dart';

import 'config/base_config.dart';

void main() async {
  DependencyInjection.registerSingletons;
  await DependencyInjection.isReady();
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text(appointmentGraphqlUrl),
          Text(appointmentApiKey),
        ],
      ),
    );
  }
}
