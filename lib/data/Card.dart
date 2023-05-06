import 'package:lucky_with_you/data/description.dart';

class TheCard {
  TheCard(
      {required this.name,
      required this.image,
      required this.des,
      required this.isSelected});
  String name;
  String image;
  bool isSelected;
  Description des;
}
