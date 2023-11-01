import 'dart:async';

import 'package:flutter/material.dart';
import 'package:planmytrip/splash_page.dart';

import 'Home_page.dart';
import 'app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.splashPage,
      // home: const SplashPage(),
      routes: AppRoutes.myRoutes(),
    );
  }
}
