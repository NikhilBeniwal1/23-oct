import 'package:flutter/material.dart';
import 'package:planmytrip/splash_page.dart';

import 'Home_page.dart';

class AppRoutes {
  static const String splashPage = "/splash";
  static const String homePage = "/home";
  static const String profilePage = "/profile";
  static const String settingsPage = "/settings";

  //all page in your app

  static Map<String, Widget Function(BuildContext)> myRoutes() {
    return {
      splashPage: (context) => SplashPage(),
      homePage: (context) => MyHomePage(),
    };
  }
}
