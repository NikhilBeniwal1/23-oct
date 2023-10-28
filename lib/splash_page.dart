import 'dart:async';

import 'package:flutter/material.dart';

import 'Home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.tour,
              size: 60,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Plan My trip",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
