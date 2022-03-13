import 'package:flutter/material.dart';
import 'package:hanri_fortune_wheel/resources/strings.dart';

class ShowAlertDialog {

  static void showMyDialog({
    required BuildContext context,
    required String value
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          content: Text(
            value,
            textAlign: TextAlign.center,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                SystemStrings.okTitle
              )
            )
          ],
        );
      }
    );
  }
}