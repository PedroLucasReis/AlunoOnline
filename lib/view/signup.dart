import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animate_gradient/animate_gradient.dart';
import 'package:myproject/view/menupage.dart';
// ignore: depend_on_referenced_packages
import 'package:scoped_model/scoped_model.dart';
import '../controller/user_controller.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late TextEditingController _namecontroller;
  late TextEditingController _codecontroller;
  late TextEditingController _emailcontroller;
  late TextEditingController _passcontroller;
  late TextEditingController _confpasscontroller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 4),
        reverseDuration: const Duration(seconds: 4));
    _controller.repeat(reverse: true);
    _namecontroller = TextEditingController();
    _codecontroller = TextEditingController();
    _emailcontroller = TextEditingController();
    _passcontroller = TextEditingController();
    _confpasscontroller = TextEditingController();
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    controller: _namecontroller,
                                    textAlignVertical: TextAlignVertical.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        fillColor: Colors.blue,
                                        enabledBorder: const OutlineInputBorder(
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    controller: _codecontroller,
                                    textAlignVertical: TextAlignVertical.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        fillColor: Colors.blue,
                                        enabledBorder: const OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.blue)),
                                        suffixIcon:
                                            const Icon(Icons.dialpad_rounded),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
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
                                            const Icon(Icons.email_rounded),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    controller: _passcontroller,
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextField(
                                    controller: _confpasscontroller,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            model.signUp(
                                                name: _namecontroller.text,
                                                code: _codecontroller.text,
                                                email: _emailcontroller.text,
                                                pass: _passcontroller.text,
                                                confpass:
                                                    _confpasscontroller.text,
                                                onSuccess: _onSuccess,
                                                weakpass: _weakpass,
                                                usedemail: _usedemail,
                                                unknownerror: _unknownerror,
                                                noconected: _noconected);
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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

  void _weakpass() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'A senha é muito fraca!',
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

  void _usedemail() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'O email já está em uso por outra conta!',
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
}
