import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lucky_with_you/util/app_layout.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "About us",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              'assets/sky.jpg',
            ),
            fit: BoxFit.cover,
          )),
          padding: EdgeInsets.only(top: 80),
          child: Container(
            // group391a (66:103)
            width: AppLayout.getScreenWidth(),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // group2ej2 (66:102)
                  margin: EdgeInsets.fromLTRB(58, 0, 58, 11),
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 5.5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(180),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // me1LLx (66:98)
                        margin: EdgeInsets.fromLTRB(0, 0, 1, 9.5),
                        width: 127,
                        height: 121,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(180),
                          child: Image.asset(
                            'assets/me.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Center(
                        // kaewmaneemarasriFTv (66:99)
                        child: Text(
                          'Kaewmanee Marasri',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            height: 1.2125,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group1Mmr (66:101)
                  padding: EdgeInsets.fromLTRB(15, 25, 15, 97),
                  width: AppLayout.getScreenWidth() * 0.8,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(65),
                  ),
                  child: Center(
                    // loremipsumissimplydummytextoft (66:100)
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 262,
                        ),
                        child: Text(
                          'Hello everyone (,,◕　⋏　◕,,), \nthank you for trying out our application !!. This is our first project in developing a mobile application, and we have put a lot of effort into it. If you have any feedback or suggestions, please feel free to contact us at \nemail: 64160234@go.buu.ac.th \nFinally, we appreciate your support and encouragement.',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.2125,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
