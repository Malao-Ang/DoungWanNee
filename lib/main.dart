import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucky_with_you/providers/state.dart';
import 'package:lucky_with_you/screen/home_screen.dart';
import 'package:lucky_with_you/screen/loading_screen.dart';
import 'package:lucky_with_you/widgets/navigationBar.dart';
import 'package:provider/provider.dart';

Future<void> main(String) async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Prediction()),
      ],
      child: MyApp(),
    ),
  );
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
