import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lucky_with_you/data/Card.dart';
import 'package:lucky_with_you/screen/ResultScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../providers/state.dart';
import '../util/app_layout.dart';

class RandomCardScreen extends StatefulWidget {
  final String selectedType;
  RandomCardScreen({super.key, required this.selectedType});

  @override
  State<RandomCardScreen> createState() => _RandomCardScreenState();
}

class _RandomCardScreenState extends State<RandomCardScreen> {
  @override
  Widget build(BuildContext context) {
    final prediction = context.read<Prediction>();

    var _deckCard = context.read<Prediction>().deckCard;
    var _selectedCard = context.watch<Prediction>().selectedIndex;
    // _selectedCard = -1;
    var _result;

    if (widget.selectedType == 'descriptionOfLove')
      _result = _deckCard[_selectedCard].des.descriptionOfLove.toString();
    if (widget.selectedType == 'descriptionOfHealth')
      _result = _deckCard[_selectedCard].des.descriptionOfHealth.toString();
    if (widget.selectedType == 'descriptionOfStudy')
      _result = _deckCard[_selectedCard].des.descriptionOfStudy.toString();
    if (widget.selectedType == 'descriptionOfFinance')
      _result = _deckCard[_selectedCard].des.descriptionOfFinance.toString();
    if (widget.selectedType == 'descriptionOfLuck')
      _result = _deckCard[_selectedCard].des.descriptionOfToDay.toString();

    void _selectImage(int index) {
      for (int i = 0; i < _deckCard.length; i++) {
        setState(() {
          if (i == index) {
            _deckCard[i].isSelected = true;
            _selectedCard = index;
          } else {
            _deckCard[i].isSelected = false;
          }
        });
      }
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        height: AppLayout.getScreenHeight(),
        width: AppLayout.getScreenWidth(),
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, 0.861),
            radius: 0.73,
            colors: <Color>[Color(0xffba90c6), Color(0x75e8a0bf)],
            stops: <double>[0, 1],
          ),
        ),
        child: ListView(
          children: [
            Container(
              // iphone1416wq (13:94)
              padding: EdgeInsets.fromLTRB(46, 0, 44, 100),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    // pickonecard6qM (13:236)
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 2, 20),
                      child: Text(
                        'PICK A CARD',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                          height: 1.615,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogrouptppvyeF (TQL1bZPjR9zNkwwU6VtPPV)
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 50),
                    width: AppLayout.getScreenWidth(),
                    height: 420,
                    child: Stack(
                      children: [
                        Positioned(
                          // group1Uqu (56:349)
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 280,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 0; i < 9; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 + (AppLayout.getWidth(27.5) * i),
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group2vNT (56:350)
                          left: 0,
                          top: 42,
                          child: Container(
                            width: 280,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 9; i < 18; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 +
                                        AppLayout.getWidth(27.5 * ((i) % 9)),

                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group3DXu (56:370)
                          left: 0,
                          top: 84,
                          child: Container(
                            width: 280,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 18; i < 27; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 +
                                        (AppLayout.getWidth(27.5) * ((i) % 9)),
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group45Ef (56:380)
                          left: 0,
                          top: 126,
                          child: Container(
                            width: 280,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 27; i < 36; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 +
                                        (AppLayout.getWidth(27.5) * ((i) % 9)),
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group5xzb (56:390)
                          left: 0,
                          top: 168,
                          child: Container(
                            width: 280,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 36; i < 45; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 +
                                        (AppLayout.getWidth(27.5) * ((i) % 9)),
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group6DLB (56:400)
                          left: 0,
                          top: 210,
                          child: Container(
                            width: 280,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 45; i < 54; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 +
                                        (AppLayout.getWidth(27.5) * ((i) % 9)),
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group7uu9 (56:410)
                          left: 0,
                          top: 252,
                          child: Container(
                            width: 280,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 54; i < 63; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 +
                                        (AppLayout.getWidth(27.5) * ((i) % 9)),
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group8MRh (56:420)
                          left: 0,
                          top: 294,
                          child: Container(
                            width: 280,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 63; i < 72; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 +
                                        (AppLayout.getWidth(27.5) * ((i) % 9)),
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // group9927 (56:430)
                          left: 42,
                          top: 336,
                          child: Container(
                            width: 196,
                            height: 84,
                            child: Stack(
                              children: [
                                for (int i = 72; i < 78; i++)
                                  Positioned(
                                    // card1zZM (56:340)
                                    left: 0.0 +
                                        (AppLayout.getWidth(27.5) * ((i) % 9)),
                                    top: 0,
                                    child: Align(
                                      child: SizedBox(
                                          width: 56,
                                          height: 84,
                                          child: GestureDetector(
                                              onTap: () {
                                                _selectImage(i);

                                                print(_deckCard[i].name);
                                                // print(_deckCard[i].isSelected);
                                                if (_deckCard[i].isSelected) {
                                                  print("black");
                                                }
                                              },
                                              child: Image.asset(
                                                'assets/card.png',
                                                fit: BoxFit.cover,
                                                color: _deckCard[i].isSelected
                                                    ? Colors.black
                                                    : null,
                                              ))),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 10,
                            // side: BorderSide(color: Colors.black, width: 2),
                            shadowColor: Color(0xd6a6d3ff),
                            shape: StadiumBorder()
                            // shadowColor: Colors.transparent,
                            //make color or elevated button transparent
                            ),
                        onPressed: () async {
                          if (widget.selectedType.isNotEmpty) {
                            prediction.shuffle();
                            await Navigator.of(context).push(PageTransition(
                                child: ResultScreen(
                                  result: _deckCard[_selectedCard],
                                  typeSelected: widget.selectedType,
                                ),
                                type: PageTransitionType.fade
                                // onToggleFavorites: onToggleFavorites,
                                ));
                          }
                        },
                        child: Container(
                          width: AppLayout.getWidth(278),
                          height: AppLayout.getHight(52),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(107),
                              gradient: const LinearGradient(
                                begin: Alignment(-0.734, 0),
                                end: Alignment(0.856, -1.673),
                                colors: <Color>[
                                  Color(0xffade4db),
                                  Color(0xd6a6d3ff)
                                ],
                                stops: <double>[0, 1],
                              )),
                          child: Center(
                            child: Text(
                              "Submit",
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
