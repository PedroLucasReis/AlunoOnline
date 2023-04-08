import 'package:flutter/material.dart';
import 'package:myproject/view/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unaerp',
      home: StartPage(),
    );
  }
}


      