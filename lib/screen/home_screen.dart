import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:lucky_with_you/screen/randomcard_screen.dart';
import 'package:lucky_with_you/util/app_layout.dart';
import 'package:lucky_with_you/widgets/cardtype.dart';
import 'package:lucky_with_you/widgets/newFeture.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../providers/state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _greetingMessage;
  final _myBox = Hive.box('nameBox');

  @override
  void initState() {
    super.initState();
    _updateGreeting();
  }

  void _updateGreeting() {
    final hour = DateTime.now().hour;

    if (hour < 12) {
      setState(() {
        _greetingMessage = 'Good morning';
      });
    } else if (hour < 18) {
      setState(() {
        _greetingMessage = 'Good afternoon';
      });
    } else {
      setState(() {
        _greetingMessage = 'Good night';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final prediction = context.watch<Prediction>();

    var _selectedType = context.watch<Prediction>().typeToSee;
    if (_myBox.get(0) == null) {
      context.watch<Prediction>().IntialData();
    } else {
      context.watch<Prediction>().loadData();
    }

    return Scaffold(
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(bottom: 25),
          width: AppLayout.getScreenWidth(),
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 232, 160, 191),
              Color.fromARGB(200, 186, 144, 198),
            ],
          )),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
              width: AppLayout.getScreenWidth(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$_greetingMessage',
                    style: GoogleFonts.libreBaskerville(
                        textStyle:
                            TextStyle(fontSize: 35, color: Colors.white)),
                  ),
                  Text(
                    prediction.name,
                    style: GoogleFonts.libreBaskerville(
                        textStyle:
                            TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                  Gap(10),
                  Text(
                    "Have a good day",
                    style: GoogleFonts.libreBaskerville(
                        textStyle:
                            TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ],
              ),
            ),
            const Gap(25),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                "Select the Topic that you want to know...",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Gap(25),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 25, bottom: 15),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(PageTransition(
                            child: RandomCardScreen(
                              selectedType: 'descriptionOfLove',
                            ),
                            type: PageTransitionType.fade
                            // onToggleFavorites: onToggleFavorites,
                            ));
                        print(_selectedType);
                      },
                      child: CardCategory(
                        title: 'Love',
                        assets: 'heart',
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.of(context).push(PageTransition(
                            child: RandomCardScreen(
                              selectedType: 'descriptionOfLuck',
                            ),
                            type: PageTransitionType.fade
                            // onToggleFavorites: onToggleFavorites,
                            ));

                        print(_selectedType);
                      },
                      child: CardCategory(title: 'LUCK', assets: 'carender'),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageTransition(
                              child: RandomCardScreen(
                                selectedType: 'descriptionOfFinance',
                              ),
                              type: PageTransitionType.fade
                              // onToggleFavorites: onToggleFavorites,
                              ));
                        },
                        child: CardCategory(title: 'Finance', assets: 'money')),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageTransition(
                              child: RandomCardScreen(
                                selectedType: 'descriptionOfHealth',
                              ),
                              type: PageTransitionType.fade
                              // onToggleFavorites: onToggleFavorites,
                              ));
                          // _selectedType = 'descriptionOfHealth';
                          // print(_selectedType);
                        },
                        child: CardCategory(title: 'Health', assets: 'health')),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).push(PageTransition(
                              child: RandomCardScreen(
                                selectedType: 'descriptionOfStudy',
                              ),
                              type: PageTransitionType.fade
                              // onToggleFavorites: onToggleFavorites,
                              ));
                          // _selectedType = 'descriptionOfStudy';
                          // print(_selectedType);
                        },
                        child: CardCategory(title: 'Study', assets: 'book')),
                  ],
                ),
              ),
            ),
            Gap(20),
            Center(child: NewFeatureCard()),
          ]),
        ),
      ]),
    );
  }
}
