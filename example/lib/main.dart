import 'package:flutter/material.dart';
import 'package:awesome_alert_pro/awesome_alert_pro.dart';

void main() {
  runApp(const MyApp());
}

/// Demo app for Awesome Alert Pro
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Awesome Alert Demo', home: const HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Awesome Alert Pro')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAwesomeAlert(
              context: context,
              title: "Success",
              message: "Your data saved successfully",
              type: AlertType.success,
              onConfirm: () {},
            );
          },
          child: const Text("Show Alert"),
        ),
      ),
    );
  }
}
