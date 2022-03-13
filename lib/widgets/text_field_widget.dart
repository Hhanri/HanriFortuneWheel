import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final Function(String) onChange;
  const TextFieldWidget({
    Key? key,
    required this.onChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController();

    String? validateForm(String value) {
      if (value.isEmpty) {
        return "please fill this field";
      } else {
        return null;
      }
    }

    return TextFormField(
      controller: controller,
      validator: (String? value) {
        return validateForm(value ?? "");
      },
      onChanged: (value) {
        onChange(value);
      },
    );
  }

}
