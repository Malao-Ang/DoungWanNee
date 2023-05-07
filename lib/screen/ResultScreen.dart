import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lucky_with_you/data/Card.dart';
import 'package:lucky_with_you/util/app_layout.dart';

class ResultScreen extends StatelessWidget {
  final TheCard result;
  final String typeSelected;

  ResultScreen({
    super.key,
    required this.result,
    required this.typeSelected,
  });
  var textPredict;
  @override
  Widget build(BuildContext context) {
    if (typeSelected == 'descriptionOfLove')
      textPredict = result.des.descriptionOfLove.toString();
    if (typeSelected == 'descriptionOfHealth')
      textPredict = result.des.descriptionOfHealth.toString();
    if (typeSelected == 'descriptionOfStudy')
      textPredict = result.des.descriptionOfStudy.toString();
    if (typeSelected == 'descriptionOfFinance')
      textPredict = result.des.descriptionOfFinance.toString();
    if (typeSelected == 'descriptionOfLuck')
      textPredict = result.des.descriptionOfToDay.toString();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withAlpha(100),
        flexibleSpace: ClipRect(
            child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
          child: Container(color: Colors.transparent),
        )),
        elevation: 0,
        title: Text(result.name),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, 0.861),
            radius: 0.73,
            colors: <Color>[Color(0xff1e3e53), Color(0x75180758)],
            stops: <double>[0, 1],
          ),
        ),
        child: Container(
          // iphone141J9M (13:243)
          padding: EdgeInsets.fromLTRB(29.5, 15, 20.5, 0),
          height: AppLayout.getScreenHeight(),
          width: AppLayout.getScreenWidth(),

          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // titleHmy (13:333)
                    margin: EdgeInsets.fromLTRB(41.5, 0, 53.5, 0),
                    width: double.infinity,
                    height: AppLayout.getScreenHeight() * 0.10,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(107),
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Center(
                        child: Text(
                      result.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                  Container(
                    // theresultJ4o (13:366)
                    width: AppLayout.getScreenWidth(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // dcs (13:344)
                          margin: EdgeInsets.fromLTRB(0, 15, 14, 45),
                          width: 245,
                          height: 412,
                          child: Image.asset('${result.image}'),
                        ),
                        Center(
                          // loremipsumissimplydummytextoft (13:345)
                          child: Container(
                            padding: EdgeInsets.only(bottom: 25),
                            constraints: BoxConstraints(
                              maxWidth: 340,
                            ),
                            child: Text(
                              textPredict,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                height: 1.0975,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
