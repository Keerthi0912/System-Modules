import 'package:flutter/material.dart';
import 'package:lesson2/controller/startscreen_controller.dart';
import 'package:lesson2/view/show_snackbar.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  static const routeName = '/startScreen';
  final _con = StartscreenController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Menu'),
        actions: [
          IconButton(
            onPressed: () => _con.onPressedAlarm(context),
            icon: const Icon(Icons.alarm),
          ),
          IconButton(
            onPressed: () => _con.onPressedMessage(context),
            icon: const Icon(Icons.message),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.account_circle_rounded,
                size: 80.0,
              ),
              accountName: Text('keerthi vanaparthi'),
              accountEmail: Text('kvanaparthi@uco.edu'),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Friends'),
              onTap: () => _con.onTapFriend(context),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () => _con.onTapLogout(context),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Text(
            'Choose a menu to navigate',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          ElevatedButton(
            onPressed: () => _con.onPressedMaterialDesign(context),
            child:  Text(
              'Material Design',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          ElevatedButton(
            onPressed: () => _con.onPressedImageDemo(context),
            child:  Text(
              'Image Demo',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
