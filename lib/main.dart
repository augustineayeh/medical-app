import 'package:flutter/material.dart';
import 'package:medical_app/src/screens/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      theme: ThemeData(
        fontFamily: 'Monserrat',
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
