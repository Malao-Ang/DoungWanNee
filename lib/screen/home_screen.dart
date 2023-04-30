import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucky_with_you/widgets/cardtype.dart';
import 'package:lucky_with_you/widgets/newFeture.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          width: double.infinity,
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
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: GoogleFonts.libreBaskerville(
                        textStyle:
                            TextStyle(fontSize: 35, color: Colors.white)),
                  ),
                  Gap(5),
                  Text(
                    "Kaewmanee",
                    style: GoogleFonts.libreBaskerville(
                        textStyle:
                            TextStyle(fontSize: 35, color: Colors.white)),
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
            Gap(20),
            Center(child: NewFeatureCard()),
            Gap(15),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 25, bottom: 15),
                child: Row(
                  children: const [
                    CardCategory(
                      title: 'Love',
                      assets: 'heart',
                    ),
                    CardCategory(title: 'LUCK', assets: 'carender'),
                    CardCategory(title: 'Finance', assets: 'money'),
                    CardCategory(title: 'Health', assets: 'health'),
                    CardCategory(title: 'Study', assets: 'book'),
                  ],
                ),
              ),
            )
          ]),
        ),
      ]),
    );
  }
}
