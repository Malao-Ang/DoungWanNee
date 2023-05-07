import 'package:drop_shadow_image/drop_shadow_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:lucky_with_you/main.dart';
import 'package:lucky_with_you/screen/home_screen.dart';
import 'package:lucky_with_you/screen/loading_screen.dart';
import 'package:lucky_with_you/util/app_layout.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '../providers/state.dart';

class AccountScreen extends StatefulWidget {
  AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final inputName = TextEditingController();
  final _myBox = Hive.box('nameBox');
  var showError = false;
  @override
  Widget build(BuildContext context) {
    final prediction = context.read<Prediction>();
    var name = TextEditingController();
    if (_myBox.get(0) == null) {
      context.watch<Prediction>().IntialData();
    } else {
      context.watch<Prediction>().loadData();
    }

    return Scaffold(
      body: ListView(
        children: [
          Container(
            // iphone141dR1 (13:393)
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
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
                      Text(
                        "Change Your name",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Gap(25),
                      TextField(
                          controller: name,
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: prediction.name,
                              errorText: showError == true
                                  ? 'กรุณากรอกข้อมมูลตัวอักษรไม่เกิน 20 ตัว'
                                  : null)),
                      Gap(25),
                      ElevatedButton(
                        child: Text("Change Your Name"),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(255, 85, 187, 1),
                            elevation: 10,
                            // side: BorderSide(color: Colors.black, width: 2),
                            shadowColor: Color.fromRGBO(255, 85, 187, 1),
                            shape: StadiumBorder()),
                        onPressed: () async {
                          if (name.text.isNotEmpty) {
                            if (name.text.length < 20) {
                              context.read<Prediction>().updateData(name.text);
                              print(name.text);
                              await Navigator.push(
                                  context,
                                  PageTransition(
                                      child: LoadingScreen(),
                                      type: PageTransitionType.fade));
                              showError = false;
                            }
                            showError = true;
                          }
                          showError = true;
                        },
                      ),
                      Gap(AppLayout.getHight(20)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: Image.asset(
                    'assets/glass.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
