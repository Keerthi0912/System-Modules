import 'package:flutter/material.dart';

class RowColDemoScreen extends StatelessWidget {
  const RowColDemoScreen({super.key});

  static const routeName = '/rowColDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row/Column Demo'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.blue[200],
                height: 200.0,
                width: 300.0,
              ),
              const Icon(
                Icons.sailing,
                size: 100.0,
              ),
              Positioned(
                bottom: 5.0,
                right: 5.0,
                child: Text(
                  'Stack',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ],
          ),
          Row(
            children: [
              for (int i = 0; i < 15; i++)
                Expanded(
                  child: Container(
                    color: Colors.pink[100],
                    margin: const EdgeInsets.only(right: 5.0),
                    child: Text('Item$i'),
                  ),
                ),
            ],
          ),
          Wrap(
            spacing: 5.0, // horizontal space
            runSpacing: 10.0, // vertical space
            children: [
              for (int i = 0; i < 15; i++)
                Container(
                  color: Colors.pink[100],
                  child: Text('Item$i'),
                ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.teal[800],
                  child: Text(
                    'AA',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.teal[100],
                  child: Text(
                    'BB',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.teal[600],
                  child: Text(
                    'CC',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.red[800],
              child: Text(
                'Hello',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red[100],
              child: Text(
                'World',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
