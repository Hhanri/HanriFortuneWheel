import 'package:flutter/material.dart';
import 'package:hanri_fortune_wheel/widgets/add_item_button_widget.dart';
import 'package:hanri_fortune_wheel/widgets/app_bar_widget.dart';
import 'package:hanri_fortune_wheel/widgets/items_list_widget.dart';
import 'package:hanri_fortune_wheel/widgets/wheel_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: const [
            Expanded(
              flex: 2,
              child: WheelWidget()
            ),
            Flexible(
              flex: 1,
              child: ItemListViewWidget()
            ),
            AddItemButtonWidget()
          ],
        ),
      ),
    );
  }
}
