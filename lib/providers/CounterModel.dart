import 'package:flutter/widgets.dart';

class Countermodel extends ChangeNotifier {
  int _localCounter = 0;
  int get values => _localCounter;
  void increment() {
    _localCounter++;
    notifyListeners();
  }
}
