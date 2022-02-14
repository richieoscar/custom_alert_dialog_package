library custom_alert_dialog_package;

import 'package:flutter/material.dart';

/// A Custom alert Dialog
class CustomAlertDialog {
  final String? title;
  final String? message;

  CustomAlertDialog({required this.title, required this.message});

  static Future showAlertDialog(
      {required BuildContext context, required Widget displayWidget}) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 20,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            title: const Text("Alert Dialog"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                displayWidget,
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Ok"),
                  color: Colors.blue,
                )
              ],
            ),
          );
        });
  }
}
