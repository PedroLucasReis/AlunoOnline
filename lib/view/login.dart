import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animate_gradient/animate_gradient.dart';
import 'package:myproject/view/menupage.dart';
import 'package:myproject/view/signup.dart';
// ignore: depend_on_referenced_packages
import 'package:scoped_model/scoped_model.dart';
import '../controller/user_controller.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late TextEditingController _emailcontroller;
  late TextEditingController _passcontroller;
  late TextEditingController _recemailcontroller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 4),
        reverseDuration: const Duration(seconds: 4));
    _controller.repeat(reverse: true);
    _emailcontroller = TextEditingController();
    _passcontroller = TextEditingController();
    _recemailcontroller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose(); // dispose do AnimationController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimateGradient(
        controller: _controller,
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
          body: ScopedModelDescendant<UserController>(
            builder: (context, child, model) {
              if (model.isLoading == true) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: Color.fromARGB(255, 13, 71, 161),
                  ),
                );
              } else {
                return Center(
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
                                  'Email do aluno:',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blue[900],
                                      fontSize: 16),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  controller: _emailcontroller,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                      fillColor: Colors.blue,
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.blue)),
                                      suffixIcon:
                                          const Icon(Icons.person_rounded),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: TextField(
                                  controller: _passcontroller,
                                  textAlignVertical: TextAlignVertical.center,
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
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 15),
                                child: TextButton(
                                  onPressed: () {
                                    model.signIn(
                                      email: _emailcontroller.text,
                                      pass: _passcontroller.text,
                                      onSuccess: _onSuccess,
                                      noconected: _noconected,
                                      unknownerror: _unknownerror,
                                      wrongpass: _wrongpass,
                                      notfound: _notfound,
                                    );
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
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return SimpleDialog(
                                                    title: const Text(
                                                        'Recuperar senha:'),
                                                    titleTextStyle: TextStyle(
                                                        fontFamily: 'upheavtt',
                                                        color: Colors.blue[900],
                                                        fontSize: 16),
                                                    backgroundColor:
                                                        Colors.white,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 24),
                                                        child: Text(
                                                          'Email:',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'upheavtt',
                                                              color: Colors
                                                                  .blue[900],
                                                              fontSize: 16),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 24,
                                                                vertical: 10),
                                                        child: TextField(
                                                          controller:
                                                              _recemailcontroller,
                                                          textAlignVertical:
                                                              TextAlignVertical
                                                                  .center,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          decoration: InputDecoration(
                                                              fillColor:
                                                                  Colors.blue,
                                                              enabledBorder: const OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: Colors
                                                                          .blue)),
                                                              suffixIcon:
                                                                  const Icon(Icons
                                                                      .email_rounded),
                                                              suffixIconColor:
                                                                  Colors.blue[
                                                                      900]),
                                                        ),
                                                      ),
                                                      SimpleDialogOption(
                                                        child: Text(
                                                          'Enviar email de recuperação!',
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'upheavtt',
                                                              color: Colors
                                                                  .blue[900],
                                                              shadows: const [
                                                                Shadow(
                                                                    color: Colors
                                                                        .blue,
                                                                    offset:
                                                                        Offset(
                                                                            1,
                                                                            1),
                                                                    blurRadius:
                                                                        1)
                                                              ],
                                                              fontSize: 16),
                                                        ),
                                                        onPressed: () {
                                                          model.recpass(
                                                              email:
                                                                  _recemailcontroller
                                                                      .text,
                                                              onSuccess:
                                                                  _onRecSuccess,
                                                              onFail: _onFail);
                                                          Navigator.pop(
                                                              context);
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
                );
              }
            },
          ),
        ));
  }

  void _onSuccess() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MenuPage()));
  }

  void _onRecSuccess() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'Email de recuperação enviado!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void _onFail() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'Falha ao enviar o email de recuperação',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void _notfound() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'Usuário não encontrado!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void _wrongpass() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'Senha incorreta!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue[900],
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void _unknownerror() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'Falha desconhecida ao entrar!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.blue[900],
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void _noconected() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'Sem conexão com a internet!',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.blue[900],
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
