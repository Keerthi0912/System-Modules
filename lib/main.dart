import 'package:flutter/material.dart';
import 'package:lesson2/view/image_screen.dart';
import 'package:lesson2/view/materialdesign_screen.dart';
import 'package:lesson2/view/start_screen.dart';

import 'model/Constant.dart';

void main() {
  runApp(const Lesson2App());
}

class Lesson2App extends StatelessWidget{
  const Lesson2App({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: Constant.dev,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
       // textTheme: const TextTheme(
         // labelLarge: TextStyle(
           // fontSize: 28.8,
        //  ),
       // ),
      ),
      initialRoute: StartScreen.routeName,
      routes: {
        StartScreen.routeName: (context) => StartScreen(),
        MaterialDesignScreen.routeName: ( context) => const MaterialDesignScreen(),
        ImageDemoScreen.routeName:(context) => const ImageDemoScreen(),
      }
    );
  }

}
Widget f1(BuildContext context) {
  return  StartScreen();
}