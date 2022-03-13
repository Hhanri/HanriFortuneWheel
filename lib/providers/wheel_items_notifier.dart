import 'package:riverpod/riverpod.dart';

class WheelItemsNotifier extends StateNotifier<List<String>> {
  WheelItemsNotifier() : super(_initialState);

  static const List<String> _initialState = ["1", "2", "3"];

  void addItem(String value) {
    state = [...state, value];
    print(state);
  }

  void deleteItem(String value) {
    state = [state.removeAt(state.indexOf(state.firstWhere((element) => element == value)))];
  }
}