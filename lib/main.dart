import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucky_with_you/screen/home_screen.dart';
import 'package:lucky_with_you/screen/loading_screen.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: LoadingScreen()),
    );
  }
}
