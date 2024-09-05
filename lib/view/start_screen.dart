import 'package:flutter/material.dart';
import 'package:lesson2/view/show_snackbar.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  static const routeName = '/startScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Menu'),
        actions: [
          IconButton(
            onPressed: () =>
                // ignore: avoid_print
                showSnackBar(
              context: context,
              message: 'Alarm action button is pressed',
            ),
            icon: const Icon(Icons.alarm),
          ),
          IconButton(
            onPressed: () => showSnackBar(
              context: context,
              message: 'Message action button is pressed',
            ),
            icon: const Icon(Icons.message),
          )
        ],
      ),
      body: const Text('Start Screen Body'),
    );
  }
}
