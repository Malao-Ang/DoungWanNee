import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lucky_with_you/data/Card.dart';
import 'package:provider/provider.dart';

import '../providers/state.dart';

class RandomCardScreen extends StatelessWidget {
  const RandomCardScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final prediction = context.read<Prediction>();
    prediction.shuffle();
    var _deckCard = context.read<Prediction>().deckCard;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // iphone1416wq (13:94)
            padding: EdgeInsets.fromLTRB(46, 46, 44, 100),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0, 0.861),
                radius: 0.73,
                colors: <Color>[Color(0xffba90c6), Color(0x75e8a0bf)],
                stops: <double>[0, 1],
              ),
            ),
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
                  width: double.infinity,
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
                              Positioned(
                                // card1zZM (56:340)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click1");
                                          print(_deckCard[1].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card2WGo (56:341)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click2");
                                          print(_deckCard[2].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card3qK5 (56:342)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click3");
                                          print(_deckCard[3].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card4xeb (56:343)
                                left: 84,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click4");
                                          print(_deckCard[4].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card5gKh (56:344)
                                left: 112,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click5");
                                          print(_deckCard[5].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card6cDM (56:345)
                                left: 140,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click6");
                                          print(_deckCard[6].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card7wWX (56:346)
                                left: 168,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click7");
                                          print(_deckCard[7].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card8sf5 (56:347)
                                left: 196,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click8");
                                          print(_deckCard[8].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card9CBZ (56:348)
                                left: 224,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click9");
                                          print(_deckCard[9].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
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
                              Positioned(
                                // card1F9q (56:351)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click10");
                                          print(_deckCard[10].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card2NET (56:352)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click11");
                                          print(_deckCard[11].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card3HsD (56:353)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click12");
                                          print(_deckCard[12].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card4Dks (56:354)
                                left: 84,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click13");
                                          print(_deckCard[13].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card5xCf (56:355)
                                left: 112,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click14");
                                          print(_deckCard[14].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card6sqR (56:356)
                                left: 140,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click15");
                                          print(_deckCard[15].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card7D8b (56:357)
                                left: 168,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click16");
                                          print(_deckCard[16].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card8Lj1 (56:358)
                                left: 196,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click17");
                                          print(_deckCard[17].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card95gb (56:359)
                                left: 224,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click18");
                                          print(_deckCard[18].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
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
                              Positioned(
                                // card1wio (56:371)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click19 ");
                                          print(_deckCard[19].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card2UTq (56:372)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click20");
                                          print(_deckCard[20].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card3P51 (56:373)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click21");
                                          print(_deckCard[21].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card46VD (56:374)
                                left: 84,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click22");
                                          print(_deckCard[22].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card5Dpj (56:375)
                                left: 112,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click23");
                                          print(_deckCard[23].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card6kJs (56:376)
                                left: 140,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click24");
                                          print(_deckCard[24].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card7gTR (56:377)
                                left: 168,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click25");
                                          print(_deckCard[25].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card8DTM (56:378)
                                left: 196,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click26");
                                          print(_deckCard[26].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card9YkX (56:379)
                                left: 224,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click27");
                                          print(_deckCard[27].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
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
                              Positioned(
                                // card1QXq (56:381)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click28");
                                          print(_deckCard[28].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card2XcT (56:382)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click29");
                                          print(_deckCard[29].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card3fTm (56:383)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click30");
                                          print(_deckCard[30].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card4aqd (56:384)
                                left: 84,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                        onTap: () {
                                          print("click31");
                                          print(_deckCard[31].name);
                                        },
                                        child: Image.asset(
                                          'assets/card.png',
                                          fit: BoxFit.cover,
                                        ),
                                      )),
                                ),
                              ),
                              Positioned(
                                // card56oy (56:385)
                                left: 112,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click32");
                                            print(_deckCard[32].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card6EQP (56:386)
                                left: 140,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click33");
                                            print(_deckCard[33].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card7NWb (56:387)
                                left: 168,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click34");
                                            print(_deckCard[34].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card8tUw (56:388)
                                left: 196,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click35");
                                            print(_deckCard[35].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card9dSX (56:389)
                                left: 224,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click36");
                                            print(_deckCard[36].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
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
                              Positioned(
                                // card1Vjd (56:391)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click37");
                                            print(_deckCard[37].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card2dL3 (56:392)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click38");
                                            print(_deckCard[38].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card3wrX (56:393)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click39");
                                            print(_deckCard[39].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card4gJK (56:394)
                                left: 84,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click40");
                                            print(_deckCard[40].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card5CnT (56:395)
                                left: 112,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click41");
                                            print(_deckCard[41].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card6vCf (56:396)
                                left: 140,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click42");
                                            print(_deckCard[42].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card7e8f (56:397)
                                left: 168,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click43");
                                            print(_deckCard[43].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card8nEs (56:398)
                                left: 196,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click44");
                                            print(_deckCard[44].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card95zf (56:399)
                                left: 224,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click45");
                                            print(_deckCard[45].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
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
                              Positioned(
                                // card1uyh (56:401)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click46");
                                            print(_deckCard[46].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card234K (56:402)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click47");
                                            print(_deckCard[47].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card3NcP (56:403)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click48");
                                            print(_deckCard[48].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card47Zy (56:404)
                                left: 84,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click49");
                                            print(_deckCard[49].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card5qks (56:405)
                                left: 112,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click50");
                                            print(_deckCard[50].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card6ys5 (56:406)
                                left: 140,
                                top: 0,
                                child: Align(
                                    child: SizedBox(
                                  width: 56,
                                  height: 84,
                                  child: InkWell(
                                      onTap: () {
                                        print("click51");
                                        print(_deckCard[51].name);
                                      },
                                      child: Image.asset(
                                        'assets/card.png',
                                        fit: BoxFit.cover,
                                      )),
                                )),
                              ),
                              Positioned(
                                // card7Ws1 (56:407)
                                left: 168,
                                top: 0,
                                child: Align(
                                    child: SizedBox(
                                  width: 56,
                                  height: 84,
                                  child: InkWell(
                                      onTap: () {
                                        print("click52");
                                        print(_deckCard[52].name);
                                      },
                                      child: Image.asset(
                                        'assets/card.png',
                                        fit: BoxFit.cover,
                                      )),
                                )),
                              ),
                              Positioned(
                                // card8rR5 (56:408)
                                left: 196,
                                top: 0,
                                child: Align(
                                    child: SizedBox(
                                  width: 56,
                                  height: 84,
                                  child: InkWell(
                                      onTap: () {
                                        print("click53");
                                        print(_deckCard[53].name);
                                      },
                                      child: Image.asset(
                                        'assets/card.png',
                                        fit: BoxFit.cover,
                                      )),
                                )),
                              ),
                              Positioned(
                                // card9a6B (56:409)
                                left: 224,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click54");
                                            print(_deckCard[54].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
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
                              Positioned(
                                // card13VZ (56:411)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click55");
                                            print(_deckCard[55].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card2Brf (56:412)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click56");
                                            print(_deckCard[56].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card3ha7 (56:413)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click57");
                                            print(_deckCard[57].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card4pPq (56:414)
                                left: 84,
                                top: 0,
                                child: Align(
                                    child: SizedBox(
                                  width: 56,
                                  height: 84,
                                  child: InkWell(
                                      onTap: () {
                                        print("click58");
                                        print(_deckCard[58].name);
                                      },
                                      child: Image.asset(
                                        'assets/card.png',
                                        fit: BoxFit.cover,
                                      )),
                                )),
                              ),
                              Positioned(
                                // card5M8s (56:415)
                                left: 112,
                                top: 0,
                                child: Align(
                                    child: SizedBox(
                                  width: 56,
                                  height: 84,
                                  child: InkWell(
                                      onTap: () {
                                        print("click59");
                                        print(_deckCard[59].name);
                                      },
                                      child: Image.asset(
                                        'assets/card.png',
                                        fit: BoxFit.cover,
                                      )),
                                )),
                              ),
                              Positioned(
                                // card6ffM (56:416)
                                left: 140,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click60");
                                            print(_deckCard[60].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card7PbM (56:417)
                                left: 168,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click61");
                                            print(_deckCard[61].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card8hc3 (56:418)
                                left: 196,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click62");
                                            print(_deckCard[62].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card9pRm (56:419)
                                left: 224,
                                top: 0,
                                child: Align(
                                    child: SizedBox(
                                  width: 56,
                                  height: 84,
                                  child: InkWell(
                                      onTap: () {
                                        print("click63");
                                        print(_deckCard[63].name);
                                      },
                                      child: Image.asset(
                                        'assets/card.png',
                                        fit: BoxFit.cover,
                                      )),
                                )),
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
                              Positioned(
                                // card15Mh (56:421)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click64");
                                            print(_deckCard[64].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card2zDm (56:422)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click65");
                                            print(_deckCard[65].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card3urX (56:423)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click66");
                                            print(_deckCard[66].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card4E87 (56:424)
                                left: 84,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click67");
                                            print(_deckCard[67].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card5Lgw (56:425)
                                left: 112,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click68");
                                            print(_deckCard[68].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card6G4o (56:426)
                                left: 140,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click69");
                                            print(_deckCard[69].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card7BSf (56:427)
                                left: 168,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click70");
                                            print(_deckCard[70].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card8WE3 (56:428)
                                left: 196,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click71");
                                            print(_deckCard[71].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card92y5 (56:429)
                                left: 224,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click72");
                                            print(_deckCard[72].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
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
                              Positioned(
                                // card2U4P (56:432)
                                left: 0,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click73");
                                            print(_deckCard[73].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card3bPu (56:433)
                                left: 28,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click74");
                                            print(_deckCard[74].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card4jW7 (56:434)
                                left: 56,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click75");
                                            print(_deckCard[75].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card5rKq (56:435)
                                left: 84,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click76");
                                            print(_deckCard[76].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card6nUP (56:436)
                                left: 112,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click77");
                                            print(_deckCard[77].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
                                          ))),
                                ),
                              ),
                              Positioned(
                                // card7uJ7 (56:437)
                                left: 140,
                                top: 0,
                                child: Align(
                                  child: SizedBox(
                                      width: 56,
                                      height: 84,
                                      child: InkWell(
                                          onTap: () {
                                            print("click78");
                                            print(_deckCard[0].name);
                                          },
                                          child: Image.asset(
                                            'assets/card.png',
                                            fit: BoxFit.cover,
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
                Container(
                  // buttonSJ3 (13:240)
                  width: double.infinity,
                  height: 73,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(107),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        // rectangle10BFd (13:237)
                        left: 6,
                        top: 8,
                        child: Align(
                          child: SizedBox(
                            width: 278,
                            height: 52,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(107),
                                gradient: LinearGradient(
                                  begin: Alignment(-0.734, 0),
                                  end: Alignment(0.856, -1.673),
                                  colors: <Color>[
                                    Color(0xffade4db),
                                    Color(0xd6a6d3ff)
                                  ],
                                  stops: <double>[0, 1],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        // submitppP (13:238)
                        left: 100.5,
                        top: 5.5,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 100,
                              height: 40,
                              child: Text(
                                'SUBMIT',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  height: 2.0525,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
