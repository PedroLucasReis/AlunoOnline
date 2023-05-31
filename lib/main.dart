// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:myproject/view/start.dart';
import 'package:scoped_model/scoped_model.dart';
import 'controller/user_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserController>(
      model: UserController(),
      child: const MaterialApp(
        color: Colors.black,
        title: 'Aluno Online',
        home: StartPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
