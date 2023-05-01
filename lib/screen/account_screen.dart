import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lucky_with_you/main.dart';
import 'package:lucky_with_you/screen/home_screen.dart';
import 'package:lucky_with_you/util/app_layout.dart';
import 'package:provider/provider.dart';

class AccountScreen extends StatelessWidget {
  final inputName = TextEditingController();

  AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // iphone141dR1 (13:393)
            padding: EdgeInsets.only(top: 50, left: 15, right: 15),
            height: AppLayout.getScreenHeight(),
            // padding: EdgeInsets.fromLTRB(17, 50, 18, 152),
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment(0, 0.861),
                radius: 0.73,
                colors: <Color>[Color(0xff1e3e53), Color(0x75180758)],
                stops: <double>[0, 1],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // glass1DJf (50:4620)

                  height: 250,
                  // width: AppLayout.getWidth(118),
                  child: Image.asset(
                    'assets/glass.png',
                    fit: BoxFit.cover,
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
