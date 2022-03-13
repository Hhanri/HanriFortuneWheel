import 'package:flutter/material.dart';

class SpinButtonWidget extends StatelessWidget {
  final VoidCallback onPress;
  const SpinButtonWidget({
    Key? key,
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPress,
        icon: const Icon(
          Icons.refresh,
          color: Colors.white,
        ),
      ),
    );
  }
}
