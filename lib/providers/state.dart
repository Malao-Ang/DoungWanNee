import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lucky_with_you/data/Card.dart';

import '../data/CardList.dart';

class Prediction with ChangeNotifier {
  List<TheCard> deckCard = cardsList;
  int selectedIndex = 0;
  String typeToSee = '';
  String name = 'Anonymous';
  final _myBox = Hive.box('nameBox');

  void IntialData() {
    name = 'Anonymous';
  }

  void loadData() {
    name = _myBox.get(0);
  }

  void updateData(String newName) {
    _myBox.put(0, newName);
  }

  void shuffle() {
    final items = List<TheCard>.from(deckCard)..shuffle(Random());
    deckCard = items;
    notifyListeners();
  }
}
