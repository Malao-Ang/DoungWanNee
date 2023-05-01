import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lucky_with_you/data/Card.dart';

import '../data/CardList.dart';

class Prediction with ChangeNotifier {
  List<TheCard> deckCard = cardsList;

  void shuffle() {
    final items = List<TheCard>.from(deckCard)..shuffle(Random());
    deckCard = items;
    notifyListeners();
  }
}
