import 'package:flutter/material.dart';
import 'package:hanri_fortune_wheel/resources/strings.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(SystemStrings.appTitle),
    );
  }
}
