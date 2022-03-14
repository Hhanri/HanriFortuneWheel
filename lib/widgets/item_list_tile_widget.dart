import 'package:flutter/material.dart';

class ItemListTileWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  const ItemListTileWidget({
    Key? key,
    required this.title,
    required this.onPress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: IconButton(
        icon: const Icon(Icons.delete_forever),
        onPressed: onPress,
      ),
    );
  }
}
