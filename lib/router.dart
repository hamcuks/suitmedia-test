import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suitmedia_kampusmerdeka_tkd/pages/home_page.dart';

class MyRouter {
  static const home = '/home';
  static const user = '/user';
  static const chooseUser = '/choose-user';

  static onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
