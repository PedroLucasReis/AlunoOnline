// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myproject/controller/user_controller.dart';
import 'package:myproject/view/login.dart';
import 'package:myproject/view/menupage.dart';
import 'package:scoped_model/scoped_model.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late VoidCallback load;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      logedtest();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScopedModelDescendant<UserController>(
          builder: (context, child, model) {
        return Center(
          child: Column(children: [
            Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Image.asset(
                  'images/logo.png',
                  scale: 7,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Row(children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Aluno Online',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'upheavtt',
                                fontSize: 20),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.mobile_friendly,
                              color: Colors.white,
                            ),
                          )
                        ]),
                  ),
                )
              ]),
            ),
            CircularProgressIndicator(color: Colors.blue[900])
          ]),
        );
      }),
      backgroundColor: Colors.white,
    );
  }

  Future<void> logedtest() async {
    var model = ScopedModel.of<UserController>(context);
    User? loged = FirebaseAuth.instance.currentUser;
    if (loged != null) {
      await model.loadCurrentUser();
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const MenuPage();
        }));
      });
    } else {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return const Login();
        }));
      });
    }
  }
}
