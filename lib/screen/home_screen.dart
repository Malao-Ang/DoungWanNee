import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        padding: EdgeInsets.only(top: 70.0, left: 15.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Hello",
            style: GoogleFonts.libreBaskerville(
                textStyle: TextStyle(fontSize: 35, color: Colors.white)),
          ),
          Gap(5),
          Text(
            "Kaewmanee",
            style: GoogleFonts.libreBaskerville(
                textStyle: TextStyle(fontSize: 35, color: Colors.white)),
          ),
          Gap(10),
          Text(
            "Have a good day",
            style: GoogleFonts.libreBaskerville(
                textStyle: TextStyle(fontSize: 20, color: Colors.white)),
          )
        ]),
      ),
    );
  }
}
