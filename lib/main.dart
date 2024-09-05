import 'package:flutter/material.dart';

void main() {
  runApp(const Lesson2App());
}

class Lesson2App extends StatelessWidget{
  const Lesson2App({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
     home: Text('Hello world!'),
    );
  }

}