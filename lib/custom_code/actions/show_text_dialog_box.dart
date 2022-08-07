// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future<String?> showTextDialogBox(BuildContext context) async {
  TextEditingController alertDialogTextController = TextEditingController();
  await showDialog(
    context: context,
    builder: (alertDialogContext) {
      return AlertDialog(
        title: Text('Proxy Host'),
        content: TextField(
          controller: alertDialogTextController,
          autofocus: true,
          decoration: InputDecoration(hintText: "Enter a host"),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(alertDialogContext)
                .pop(alertDialogTextController.text),
            child: Text('Ok'),
          ),
        ],
      );
    },
  );
  return alertDialogTextController.text;
}
