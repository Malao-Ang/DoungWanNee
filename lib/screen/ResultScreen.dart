import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lucky_with_you/data/Card.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        // iphone141J9M (13:243)
        padding: EdgeInsets.fromLTRB(29.5, 33, 20.5, 101),
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
              // titleHmy (13:333)
              margin: EdgeInsets.fromLTRB(41.5, 0, 53.5, 46),
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(107),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle10zgP (13:334)
                    left: 7.3500061035,
                    top: 0,
                    child: Align(
                      child: SizedBox(
                        width: 227.03,
                        height: 48,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(107),
                            border: Border.all(color: Color(0xffffffff)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // thesunVd9 (13:332)
                    left: 76.5,
                    top: 6.5,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 92,
                          height: 36,
                          child: Text(
                            result.name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w400,
                              height: 1.0975,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // theresultJ4o (13:366)
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // dcs (13:344)
                    margin: EdgeInsets.fromLTRB(0, 0, 14, 45),
                    width: 245,
                    height: 412,
                    child: Image.asset('...'),
                  ),
                  Center(
                    // loremipsumissimplydummytextoft (13:345)
                    child: Container(
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
      ),
    );
  }
}
