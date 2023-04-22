import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animate_gradient/animate_gradient.dart';
import 'package:myproject/view/menupage.dart';
import 'package:myproject/view/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  height: 400,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    boxShadow: const [
                      BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Identifique-se',
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
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue)),
                                suffixIcon: const Icon(Icons.person_rounded),
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
                            decoration: InputDecoration(
                                fillColor: Colors.blue,
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue)),
                                suffixIcon: const Icon(Icons.password_rounded),
                                suffixIconColor: Colors.blue[900]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MenuPage()));
                            },
                            child: Text(
                              'Entrar',
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
                        ),
                        const Divider(
                          color: Colors.blue,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const SignUp()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 15, horizontal: 15),
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
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SimpleDialog(
                                              title: const Text(
                                                  'Recuperar senha:'),
                                              titleTextStyle: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  color: Colors.blue[900],
                                                  fontSize: 16),
                                              backgroundColor: Colors.white,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 24),
                                                  child: Text(
                                                    'Email:',
                                                    style: TextStyle(
                                                        fontFamily: 'upheavtt',
                                                        color: Colors.blue[900],
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 24,
                                                      vertical: 10),
                                                  child: TextField(
                                                    textAlignVertical:
                                                        TextAlignVertical
                                                            .center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                        fillColor: Colors.blue,
                                                        enabledBorder:
                                                            const OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .blue)),
                                                        suffixIcon: const Icon(
                                                            Icons
                                                                .email_rounded),
                                                        suffixIconColor:
                                                            Colors.blue[900]),
                                                  ),
                                                ),
                                                SimpleDialogOption(
                                                  child: Text(
                                                    'Enviar email de recuperação!',
                                                    style: TextStyle(
                                                        fontFamily: 'upheavtt',
                                                        color: Colors.blue[900],
                                                        shadows: const [
                                                          Shadow(
                                                              color:
                                                                  Colors.blue,
                                                              offset:
                                                                  Offset(1, 1),
                                                              blurRadius: 1)
                                                        ],
                                                        fontSize: 16),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(SnackBar(
                                                            backgroundColor:
                                                                Colors
                                                                    .blue[900],
                                                            content: const Text(
                                                              'Email enviado!',
                                                              style: TextStyle(
                                                                  letterSpacing:
                                                                      2,
                                                                  fontFamily:
                                                                      'upheavtt',
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 16),
                                                            )));
                                                  },
                                                )
                                              ],
                                            );
                                          });
                                    });
                                  },
                                  child: Text(
                                    'Recuperar senha',
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
                              )
                            ])
                      ]),
                )),
          ),
        ));
  }
}
