import 'package:hanri_fortune_wheel/resources/strings.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WheelItemsNotifier extends StateNotifier<List<String>> {
  WheelItemsNotifier() : super(_initialState);

  static const List<String> _initialState = ["yes", "no"];

  void addItem(String value) {
    state = [...state, value];
    save();
  }

  void deleteItem(String value) {
    state = [state.removeAt(state.indexOf(state.firstWhere((element) => element == value)))];
    save();
  }

  void save() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList(SharedPreferencesString.save, state);
  }

  void load() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    state = prefs.getStringList(SharedPreferencesString.save) ?? _initialState;
  }
}