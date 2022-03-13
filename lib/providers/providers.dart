import 'package:hanri_fortune_wheel/providers/wheel_items_notifier.dart';
import 'package:riverpod/riverpod.dart';

final StateNotifierProvider<WheelItemsNotifier, List<String>> wheelItemsProvider = StateNotifierProvider<WheelItemsNotifier, List<String>>(
    (ref) => WheelItemsNotifier()
);