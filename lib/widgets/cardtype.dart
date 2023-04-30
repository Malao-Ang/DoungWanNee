import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardCategory extends StatefulWidget {
  const CardCategory({super.key});

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: 306,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
            // loveGLF (13:76)
            margin: EdgeInsets.fromLTRB(0, 0, 38, 0),
            width: 230,
            height: double.infinity,
            decoration: BoxDecoration(
              // color: Color.fromARGB(228, 79, 75, 75),
              color: Color(0xe5ffffff),
              borderRadius: BorderRadius.circular(42),
            ),
            child: Stack(
              children: [
                Positioned(
                  // removal1yVZ (13:74)
                  left: 6,
                  top: 85,
                  child: Align(
                    child: SizedBox(
                      width: 204,
                      height: 204,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(75),
                        child: Image.asset(
                          'assets/heart.png',
                          fit: BoxFit.cover,
                          height: 100,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // howisyourgPy (13:75)
                  left: 29,
                  top: 23,
                  child: Align(
                    child: SizedBox(
                      width: 80,
                      height: 23,
                      child: Text(
                        'How is your',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.615,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // lovePJP (13:77)
                  left: 23,
                  top: 39,
                  child: Align(
                    child: SizedBox(
                      width: 90,
                      height: 65,
                      child: Text(
                        'Love',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w400,
                          height: 1.615,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ]),
    );
    // Container(
    //   // loveGLF (13:76)
    //   margin: EdgeInsets.fromLTRB(0, 0, 38, 0),
    //   width: 227,
    //   height: double.infinity,
    //   decoration: BoxDecoration(
    //     color: Color(0xe5ffffff),
    //     borderRadius: BorderRadius.circular(42),
    //   ),
    //   child: Stack(children: [
    //     Positioned(
    //       // removal1yVZ (13:74)
    //       left: 6,
    //       top: 85,
    //       child: Align(
    //         child: SizedBox(
    //           width: 204,
    //           height: 204,
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.circular(75),
    //             child: Image.asset(
    //               'assets/heart.png',
    //               fit: BoxFit.cover,
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     const Positioned(
    //       // howisyourgPy (13:75)
    //       left: 29,
    //       top: 23,
    //       child: Align(
    //         child: SizedBox(
    //           width: 71,
    //           height: 23,
    //           child: Text(
    //             'How is your',
    //             style: TextStyle(
    //               fontSize: 14,
    //               fontWeight: FontWeight.w400,
    //               height: 1.615,
    //               color: Color(0xff000000),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //     const Positioned(
    //       // lovePJP (13:77)
    //       left: 23,
    //       top: 39,
    //       child: Align(
    //         child: SizedBox(
    //           width: 83,
    //           height: 65,
    //           child: Text(
    //             'Love',
    //             style: TextStyle(
    //               fontSize: 40,
    //               fontWeight: FontWeight.w400,
    //               height: 1.615,
    //               color: Color(0xff000000),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ]),
    // );
  }
}
