import 'package:flutter/material.dart';

class ImageDemoScreen extends StatelessWidget {
  const ImageDemoScreen({super.key});

  static const routeName = '/imageDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Demo'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.amberAccent,
            height: 250.0,
            child: Image.network(
                'https://m.media-amazon.com/images/I/71NBd6J6i1S._AC_UY218_.jpg'),
          ),
          Container(
            color: Colors.orange[200],
            height: 200.0,
            child: Image.network(
                'https://m.media-amazon.com/images/I/71oTwmxZFwL._AC_UY218_.jpg'),
          ),
          Container(
            color: Colors.teal,
            height: 200.0,
            child: Image.asset('images/apple.png'),
          ),
          Container(
            color: Colors.pink,
            height: 200.0,
            child: Image.asset('images/bus.jpeg'),
          ),
        ],
      ),
    );
  }
}
