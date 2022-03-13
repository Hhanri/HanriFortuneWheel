import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanri_fortune_wheel/providers/providers.dart';
import 'package:hanri_fortune_wheel/utils/alert_dialog_utils.dart';

class WheelWidget extends ConsumerStatefulWidget {
  const WheelWidget({Key? key}) : super(key: key);

  @override
  _WheelWidgetState createState() => _WheelWidgetState();
}

class _WheelWidgetState extends ConsumerState<WheelWidget> {

  StreamController<int> controller = StreamController<int>();
  int value = 0;

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  void spinWheel(int max) {
    setState(() {
      value = Random().nextInt(max);
      controller.add(
        value
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> items = ref.watch(wheelItemsProvider);
    return FortuneWheel(
      animateFirst: false,
      selected: controller.stream,
      duration: const Duration(milliseconds: 100),
      items: [for (String it in items) FortuneItem(child: Text(it))],
      onFling: () {
        spinWheel(items.length);
      },
      onAnimationEnd: ()  {
        ShowAlertDialog.resultAlertDialog(context: context, value: ref.watch(wheelItemsProvider)[value]);
      },
    );
  }
}
