import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';

class NewFeatureCard extends StatefulWidget {
  const NewFeatureCard({super.key});

  @override
  State<NewFeatureCard> createState() => _NewFeatureCardState();
}

class _NewFeatureCardState extends State<NewFeatureCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              'assets/emp.jpg',
              height: 100,
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              "Now you can set\nTaro cardin your\nwidget!!",
              style: TextStyle(fontSize: 20),
            )
          ]),
        ],
      ),
    );
  }
}
