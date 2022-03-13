import 'package:flutter/material.dart';
import 'package:hanri_fortune_wheel/utils/alert_dialog_utils.dart';

class AddItemButtonWidget extends StatelessWidget {
  const AddItemButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ShowAlertDialog.addAlertDialog(context: context);
      },
      child: const Text('ADD')
    );
  }
}
