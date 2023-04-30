import 'package:flutter/material.dart';

class Luck with ChangeNotifier {
  String name = 'Anonymous';
  void editName(String _name) {
    name = _name;
    notifyListeners();
  }
}
