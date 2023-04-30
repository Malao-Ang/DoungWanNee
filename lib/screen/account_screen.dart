import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lucky_with_you/util/app_layout.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
                  // autogroupngqd4WK (AWsVZPkeHptiVsXr2bNgqd)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 74),
                  padding: EdgeInsets.fromLTRB(37, 42, 27, 31),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x99ffffff),
                    borderRadius: BorderRadius.circular(41),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // settingx5u (50:4617)
                        margin: EdgeInsets.fromLTRB(0, 0, 212, 27),
                        child: Text(
                          'Setting',
                          style: TextStyle(
                            fontSize: 22.9475288391,
                            fontWeight: FontWeight.w700,
                            height: 1,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // textinputrSB (50:181)
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 35),
                        child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // labeltextNvK (I50:181;1:123)
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
                                  child: Text(
                                    'Name',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      letterSpacing: 0.400000006,
                                      color: Color(0xff10002e),
                                    ),
                                  ),
                                ),
                                Container(
                                    // container65d (I50:181;1:124)
                                    // padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff8bb3ff)),
                                      color: Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: TextField()),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupidqzLkf (AWsVfZF3HnREQRUzLriDqZ)
                        margin: EdgeInsets.fromLTRB(161, 0, 0, 0),
                        width: 120,
                        height: 42,
                        decoration: BoxDecoration(
                          color: Color(0xff060047),
                          borderRadius: BorderRadius.circular(107.5),
                        ),
                        child: Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              height: 1,
                              letterSpacing: 0.400000006,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
