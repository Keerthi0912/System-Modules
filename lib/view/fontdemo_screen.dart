import 'package:flutter/material.dart';

class FontDemoScreen extends StatelessWidget {
  const FontDemoScreen({super.key});

  static const routeName = '/fontDemoScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Demo'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
             Text(
              'This is to show LobsterTwo Regular fonts',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 28.0,
              ) ,
            ),
             Text(
              'This is to show LobsterTwo Italic fonts',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 28.0,
                fontStyle: FontStyle.italic,
              ) ,
            ),
             Text(
              'This is to show LobsterTwo Bold fonts',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
               // fontStyle: FontStyle.italic,
              ) ,
            ),
            Text(
              'This is to show LobsterTwo Bold-Italic fonts',
              style: TextStyle(
                fontFamily: 'LobsterTwo',
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}
