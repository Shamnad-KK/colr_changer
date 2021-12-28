import 'package:flutter/material.dart';

class MyClass extends ChangeNotifier {
  Color colour1 = Colors.red;

  void firstcolor() {
    colour1 = Colors.yellow;
    notifyListeners();
  }

  void secondColr() {
    colour1 = Colors.blueGrey;
    notifyListeners();
  }
}
