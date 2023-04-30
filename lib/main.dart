import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucky_with_you/screen/home_screen.dart';
import 'package:lucky_with_you/screen/loading_screen.dart';
import 'package:lucky_with_you/widgets/navigationBar.dart';
import 'package:provider/provider.dart';

import 'providers/state.dart';

Future<void> main(String) async {
  runApp(ChangeNotifierProvider(create: (_) => Luck(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingScreen(),
    );
  }
}
