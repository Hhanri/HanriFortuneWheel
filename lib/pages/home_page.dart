import 'package:flutter/material.dart';
import 'package:hanri_fortune_wheel/widgets/add_item_button_widget.dart';
import 'package:hanri_fortune_wheel/widgets/wheel_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Expanded(
            child: WheelWidget()
          ),
          AddItemButtonWidget()
        ],
      ),
    );
  }
}
