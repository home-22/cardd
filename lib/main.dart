import 'package:cardd/Welcome_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Card App',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      routes: {
        '/': (context) => const WelcomeScreen(),
      },
    );
  }
}