import 'package:flutter/material.dart';

import 'src/screens/ui.dart';

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
