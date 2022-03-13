import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanri_fortune_wheel/utils/alert_dialog_utils.dart';

class AddItemButtonWidget extends StatelessWidget {
  const AddItemButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return ElevatedButton(
          onPressed: () {
            ShowAlertDialog.addAlertDialog(context: context, ref: ref);
          },
          child: const Text('ADD')
        );
      }
    );
  }
}
