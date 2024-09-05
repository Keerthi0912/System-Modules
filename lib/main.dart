import 'package:flutter/material.dart';
import 'package:lesson2/view/start_screen.dart';

void main() {
  runApp(const Lesson2App());
}

class Lesson2App extends StatelessWidget{
  const Lesson2App({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: f1,
      }
    );
  }

}


Widget f1(BuildContext context) {
  return const StartScreen();
}