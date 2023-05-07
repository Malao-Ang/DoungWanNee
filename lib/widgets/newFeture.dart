import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:lucky_with_you/screen/AboutUsScreen.dart';
import 'package:lucky_with_you/util/app_layout.dart';

class NewFeatureCard extends StatefulWidget {
  const NewFeatureCard({super.key});

  @override
  State<NewFeatureCard> createState() => _NewFeatureCardState();
}

class _NewFeatureCardState extends State<NewFeatureCard> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      // newfetureuT5 (13:421)
      left: 7,
      top: 230,
      child: Container(
        width: 369,
        height: 200,
        child: Stack(
          children: [
            Positioned(
              // rectangle2qbd (13:413)
              left: 11,
              top: 14,
              child: Align(
                child: SizedBox(
                  width: 358,
                  height: 158,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(42),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // newchipsN5m (13:419)
              left: 0,
              top: 0,
              child: Container(
                width: 150,
                height: 38,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(85.5),
                  gradient: LinearGradient(
                    begin: Alignment(-1.678, 0),
                    end: Alignment(1.911, -1),
                    colors: <Color>[Color(0xff34fff2), Color(0xffefead8)],
                    stops: <double>[0, 1],
                  ),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text('About US\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
            Positioned(
              // newfeturebjD (13:420)
              left: 75,
              top: 48,
              child: Container(
                width: 238,
                height: 102,
                child: GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AboutUsScreen())),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // Y8f (13:417)
                        margin: EdgeInsets.fromLTRB(0, 0, 36, 1),
                        width: 59,
                        height: 250,
                        child: Image.asset(
                          'assets/woman.png',
                          height: AppLayout.getHight(250),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        // nowyoucansettarocardinyourwidg (13:418)
                        // margin: EdgeInsets.only(bottom: 10),
                        constraints: BoxConstraints(
                          maxWidth: 143,
                        ),
                        child: Text(
                          'Click to come in and get to know us. !!',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              height: 1.615,
                              color: Color(0xff000000)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    // Container(
    //   width: double.infinity,
    //   height: AppLayout.getHight(150),
    //   decoration: BoxDecoration(
    //       color: Colors.white, borderRadius: BorderRadius.circular(40)),
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Row(mainAxisAlignment: MainAxisAlignment.center, children: [
    // Image.asset(
    //   'assets/emp.jpg',
    //   height: AppLayout.getHight(100),
    // ),
    //         SizedBox(
    //           width: AppLayout.getWidth(50),
    //         ),
    // Text(
    //   "Now you can set\nTaro cardin your\nwidget!!",
    //   style: TextStyle(fontSize: 20),
    // )
    //       ]),
    //     ],
    //   ),
    // );
  }
}
