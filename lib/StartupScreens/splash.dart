import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'firstsScreen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState(){

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const firstScreen();
            })));
    return Scaffold(
      backgroundColor: const Color(0xffed5959),
      body: Center(
        child: SvgPicture.asset("asset/heart.svg"),
      ),
    );
  }
}
