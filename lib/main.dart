import 'package:flutter/material.dart';
import 'package:suitmedia_kampusmerdeka_tkd/pages/home_page.dart';
import 'package:suitmedia_kampusmerdeka_tkd/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Suitmedia Test x Kampus Merdeka',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: MyRouter.home,
      onGenerateRoute: (settings) => MyRouter.onGenerateRoute(settings),
    );
  }
}
