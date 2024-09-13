import 'package:flutter/material.dart';
import 'package:lesson2/controller/buttondemo_controller.dart';
import 'package:lesson2/model/buttondemo_model.dart';

class ButtonDemoScreen extends StatelessWidget {
  ButtonDemoScreen({super.key});

  static const routeName = '/buttonDemoScreen';
  final _con = ButtonDemoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Demo'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.edit),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.check),
          ),
          PopupMenuButton<int>(
            initialValue: 2,
            onSelected: (int selected)
             => _con.onSelectedOverflowMenu(context, selected) ,
            itemBuilder: (context){
              return [
                const PopupMenuItem(
                 value: 0,
                 child: Icon(Icons.abc), 
                ),
                 const PopupMenuItem(
                 value: 1,
                 child: Icon(Icons.message), 
                ),
                 const PopupMenuItem(
                 value: 2,
                 child: Icon(Icons.people), 
                ),
              ];
            },),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => _con.onPressedElevatedButton(context),
              style: ElevatedButton.styleFrom(
                elevation: 20.0,
              ),
              child: const Text('Elevated Button'),
            ),
            FilledButton(
              onPressed: () => _con.onPressedFilledButton(context),
              child: const Text('Filled Button'),
            ),
            FilledButton.tonal(
              onPressed: () => _con.onPressedFilledTonalButton(context),
              child: const Text('Filled Tonal Button'),
            ),
            OutlinedButton(
              onPressed: () => _con.onPressedOutlinedButton(context),
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () => _con.onPressedTextButton(context),
              child: const Text('Text Button'),
            ),
            IconButton(
              onPressed: () => _con.onPressedIconButton(context),
              icon: const Icon(
                Icons.ac_unit,
                size: 60.0,
                color: Colors.blue,
              ),
            ),
            Container(
              color: Colors.red[100],
              padding: const EdgeInsets.fromLTRB(20.0, 3.0, 20.0, 3.0),
              child: DropdownButton<ColorChoice>(
                value: ColorChoice.green,
                items: [
                  for (var color in ColorChoice.values)
                    DropdownMenuItem(
                      value: color,
                      child: Text(color.name),
                    ),
                ],
                onChanged: (ColorChoice? color) =>
                    _con.onChangedColorChoice(context, color),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => _con.onPressedFAB(context),
      ),
    );
  }
}
