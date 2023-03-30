import 'package:flutter/material.dart';
import 'StartupScreens/splash.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const splashScreen();
  }
}
