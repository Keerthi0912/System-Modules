import 'package:flutter/material.dart';
import 'package:lesson2/model/buttondemo_model.dart';
import 'package:lesson2/view/show_snackbar.dart';

class ButtonDemoController {
  void onPressedFAB(BuildContext context) {
    showSnackBar(context: context, message: 'FAB is pressed');
  }

  void onPressedElevatedButton(BuildContext context) {
    showSnackBar(context: context, message: 'ElevatedButton is pressed');
  }

  void onPressedFilledButton(BuildContext context) {
    showSnackBar(context: context, message: 'FilledButton is pressed');
  }

  void onPressedFilledTonalButton(BuildContext context) {
    showSnackBar(context: context, message: 'FilledTonalButton is pressed');
  }

  void onPressedOutlinedButton(BuildContext context) {
    showSnackBar(context: context, message: 'OutlinedButton is pressed');
  }

  void onPressedTextButton(BuildContext context) {
    showSnackBar(context: context, message: 'TextButton is pressed');
  }

  void onPressedIconButton(BuildContext context) {
    showSnackBar(context: context, message: 'IconButton is pressed');
  }

  void onChangedColorChoice(BuildContext context, ColorChoice? color) {
    showSnackBar(
      context: context,
      message: color == null ? 'N/A' : color.name,
    );
  }

  void onSelectedOverflowMenu(BuildContext context, int selected) {
    showSnackBar(context: context, message: 'Menu selected is $selected');
  } 
}
