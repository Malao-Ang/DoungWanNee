import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
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
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white.withAlpha(200),
                      borderRadius: BorderRadius.circular(25.0)),
                  padding: EdgeInsets.only(
                      top: AppLayout.getWidth(20),
                      left: AppLayout.getWidth(15),
                      right: AppLayout.getHight(15)),
                  height: AppLayout.getScreenHeight() * 0.45,
                  width: AppLayout.getScreenWidth() * 0.8,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextField(
                          textAlign: TextAlign.center,
                        ),
                        Gap(25),
                        ElevatedButton(
                          child: Text("Change Name!"),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.indigo,
                            elevation: 0,
                          ),
                          onPressed: () {},
                        ),
                      ]),
                ),
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
