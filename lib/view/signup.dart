import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return AnimateGradient(
        primaryColors: const [Colors.white, Colors.blue],
        secondaryColors: const [Colors.yellow, Colors.white],
        primaryBegin: Alignment.topCenter,
        primaryEnd: Alignment.bottomCenter,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Hero(
                    tag: 'logo',
                    child: Image.asset(
                      'images/logo.png',
                      scale: 20,
                    ),
                  ),
                ),
                Hero(
                  tag: 'logo2',
                  child: Text(
                    '| Aluno Online',
                    style: TextStyle(
                        color: Colors.blue[900],
                        fontFamily: 'upheavtt',
                        fontSize: 16),
                  ),
                ),
              ],
            ),
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
          ),
          body: Center(
            child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 300,
                  height: 500,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    boxShadow: const [
                      BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              'Cadastre-se',
                              style: TextStyle(
                                  fontFamily: 'upheavtt',
                                  color: Colors.blue[900],
                                  fontSize: 20),
                            ),
                          ),
                          const Divider(
                            color: Colors.blue,
                            height: 2,
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, bottom: 5),
                            child: Text(
                              'Nome:',
                              style: TextStyle(
                                  fontFamily: 'upheavtt',
                                  color: Colors.blue[900],
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  fillColor: Colors.blue,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  suffixIcon: const Icon(Icons.person),
                                  suffixIconColor: Colors.blue[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, bottom: 5),
                            child: Text(
                              'Código do aluno:',
                              style: TextStyle(
                                  fontFamily: 'upheavtt',
                                  color: Colors.blue[900],
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  fillColor: Colors.blue,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  suffixIcon: const Icon(Icons.dialpad_rounded),
                                  suffixIconColor: Colors.blue[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, bottom: 5),
                            child: Text(
                              'E-mail:',
                              style: TextStyle(
                                  fontFamily: 'upheavtt',
                                  color: Colors.blue[900],
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  fillColor: Colors.blue,
                                  enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  suffixIcon: const Icon(Icons.email_rounded),
                                  suffixIconColor: Colors.blue[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, bottom: 5),
                            child: Text(
                              'Senha:',
                              style: TextStyle(
                                  fontFamily: 'upheavtt',
                                  color: Colors.blue[900],
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  fillColor: Colors.blue,
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  suffixIcon:
                                      const Icon(Icons.password_rounded),
                                  suffixIconColor: Colors.blue[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, left: 20, bottom: 5),
                            child: Text(
                              'Comfirmar senha:',
                              style: TextStyle(
                                  fontFamily: 'upheavtt',
                                  color: Colors.blue[900],
                                  fontSize: 16),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  fillColor: Colors.blue,
                                  enabledBorder: const OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue)),
                                  suffixIcon:
                                      const Icon(Icons.password_rounded),
                                  suffixIconColor: Colors.blue[900]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 10, left: 20, right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Cadastrar',
                                      style: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16,
                                        shadows: const [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 1),
                                              blurRadius: 1)
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                          const Divider(
                            color: Colors.blue,
                            height: 2,
                            thickness: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 10, left: 20, right: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16,
                                        shadows: const [
                                          Shadow(
                                              color: Colors.blue,
                                              offset: Offset(1, 1),
                                              blurRadius: 1)
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                          ),
                        ]),
                  ),
                )),
          ),
        ));
  }
}
