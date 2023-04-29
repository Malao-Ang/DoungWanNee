import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

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
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Hello"), Gap(15), Text("Kaewmanee")]),
      ),
    );
  }
}
