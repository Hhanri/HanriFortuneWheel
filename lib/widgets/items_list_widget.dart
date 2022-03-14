import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanri_fortune_wheel/providers/providers.dart';
import 'package:hanri_fortune_wheel/widgets/item_list_tile_widget.dart';

class ItemListViewWidget extends StatelessWidget {
  const ItemListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        List<String> items = ref.watch(wheelItemsProvider);
        return ListView.builder(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemListTileWidget(
              title: items[index],
              onPress: () {
                if (items.length > 2) {
                  ref.watch(wheelItemsProvider.notifier).deleteItem(index);
                }
              },
            );
          }
        );
      }
    );
  }
}