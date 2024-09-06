import 'package:flutter/material.dart';

class MaterialDesignScreen extends StatelessWidget {
  const MaterialDesignScreen({super.key});

  static const routeName = '/materialDesignScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Design Demo'),
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Material Design',
              style: TextStyle(
                color: Colors.red,
                fontSize: 28.0,
                fontFamily: 'Courier New'
              ),
            ),
            const Text(
              'Two',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 60.0,
              ),
            ),
            
            Text(
              'displayLarge',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'displayMedium',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              'displaySmall',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Text(
              'headlineLarge',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'headlineMedium',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'headlineSmall',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'titleLarge',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              'titleMedium',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              'titleSmall',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              'bodyLarge',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'bodyMedium',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'bodyeSmall',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              'labelLarge',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              'labelMedium',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              'labelSmall',
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }
}
