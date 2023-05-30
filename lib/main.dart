import 'package:flutter/material.dart';
import 'package:myproject/view/login.dart';
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
        title: 'SpaceOn',
        home: Login(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
