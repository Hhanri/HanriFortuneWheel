import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StreamController<int> controller = StreamController<int>();

  @override
  void dispose() {
    controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    const List<String> items = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6"
    ];

    void spinWheel() {
      setState(() {
        controller.add(
          Random().nextInt(items.length -1),
        );
      });
    }

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FortuneWheel(
              animateFirst: false,
              selected: controller.stream,
              duration: const Duration(milliseconds: 100),
              items: [for (String it in items) FortuneItem(child: Text(it))],
              onFling: () {
                spinWheel();
              },
              onAnimationStart: () {
                print("go");
                dispose();
              },
              onAnimationEnd: () async {
                print("end");
                print(controller.stream.toString());
              },
            ),
          ),
        ],
      ),
    );
  }
}
