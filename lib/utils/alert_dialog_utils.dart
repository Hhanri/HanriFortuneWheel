import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanri_fortune_wheel/providers/providers.dart';
import 'package:hanri_fortune_wheel/resources/strings.dart';
import 'package:hanri_fortune_wheel/widgets/text_field_widget.dart';

class ShowAlertDialog {

  static void resultAlertDialog({
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

  static void addAlertDialog({
    required BuildContext context,
  }) {
    final _formKey = GlobalKey<FormState>();
    String value = "";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: Alignment.center,
          content: Form(
            key: _formKey,
            child: TextFieldWidget(
              onChange: (newValue) {
                value = newValue;
              },
            )
          ),
          actions: [
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return TextButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (_formKey.currentState!.validate()) {
                      ref.watch(wheelItemsProvider.notifier).addItem(value);
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text(
                    SystemStrings.okTitle
                  )
                );
              }
            )
          ],
        );
      }
    );
  }

}