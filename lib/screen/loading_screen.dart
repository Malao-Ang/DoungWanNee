import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:lucky_with_you/main.dart';
import 'package:lucky_with_you/screen/home_screen.dart';
import 'package:lucky_with_you/util/app_layout.dart';
import 'package:lucky_with_you/widgets/navigationBar.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomNavigation())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 143, 143),
              Color.fromARGB(255, 7, 39, 65)
            ],
          )),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/start_splash.png',
              height: AppLayout.getHight(180),
            ),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (Platform.isIOS)
                  const CupertinoActivityIndicator(
                    radius: 20,
                  )
                else
                  const CircularProgressIndicator(color: Colors.white),
                const Gap(25),
                const Text(
                  "Loading...",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
