import 'package:flutter/material.dart';
import 'package:lesson2/view/image_screen.dart';
import 'package:lesson2/view/materialdesign_screen.dart';

import '../view/show_snackbar.dart';

class StartscreenController {
  void onPressedAlarm(BuildContext context) {
    showSnackBar(
      context: context,
      message: 'Alarm action button pressed',
    );
  }

  void onPressedMessage(BuildContext context) {
    showSnackBar(
      context: context,
      message: 'Message action button pressed',
    );
  }

  void onTapFriend(BuildContext context) {
    showSnackBar(
      context: context,
      message: 'Friend menu on drawer',
    );
    Navigator.of(context).pop();
  }

  void onTapLogout(BuildContext context) {
    showSnackBar(
      context: context,
      message: 'Logout menu on drawer',
    );
    Navigator.of(context).pop();
  }

  void onPressedMaterialDesign(BuildContext context) {
    Navigator.pushNamed(context, MaterialDesignScreen.routeName);
  }
   void onPressedImageDemo(BuildContext context) {
    Navigator.pushNamed(context, ImageDemoScreen.routeName);
  }
}
