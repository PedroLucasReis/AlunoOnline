// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:myproject/controller/user_controller.dart';
import 'package:scoped_model/scoped_model.dart';

class AbaHome extends StatefulWidget {
  const AbaHome({super.key});

  @override
  State<AbaHome> createState() => _AbaHomeState();
}

class _AbaHomeState extends State<AbaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: ScopedModelDescendant<UserController>(
          builder: (context, child, model) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 30,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      boxShadow: const [
                        BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Olá, seja bem-vindo(a)!',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 125,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          boxShadow: const [
                            BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width *
                                    20 /
                                    100,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.blue,
                                        offset: Offset(5, 5))
                                  ],
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    model.userMain.getName()[0].toUpperCase(),
                                    style: TextStyle(
                                        fontFamily: 'upheavtt',
                                        fontSize: 50,
                                        color: Colors.yellow[700]),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        57 /
                                        100,
                                    height: 30,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.blue,
                                            offset: Offset(5, 5))
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                          style: const TextStyle(
                                              fontFamily: 'upheavtt',
                                              fontSize: 16),
                                          children: [
                                            TextSpan(
                                                text: 'Nome: ',
                                                style: TextStyle(
                                                  color: Colors.blue[900],
                                                )),
                                            TextSpan(
                                                text: model.userMain.getName(),
                                                style: TextStyle(
                                                    color: Colors.yellow[700])),
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          57 /
                                          100,
                                      height: 30,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.blue,
                                              offset: Offset(5, 5))
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                            style: const TextStyle(
                                                fontFamily: 'upheavtt',
                                                fontSize: 16),
                                            children: [
                                              TextSpan(
                                                  text: 'Código: ',
                                                  style: TextStyle(
                                                    color: Colors.blue[900],
                                                  )),
                                              TextSpan(
                                                  text:
                                                      model.userMain.getCode(),
                                                  style: TextStyle(
                                                      color:
                                                          Colors.yellow[700])),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 160,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          boxShadow: const [
                            BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width - 125,
                              height: 30,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.blue, offset: Offset(5, 5))
                                ],
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: RichText(
                                text: TextSpan(
                                    style: const TextStyle(
                                        fontFamily: 'upheavtt', fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: 'Curso: ',
                                          style: TextStyle(
                                            color: Colors.blue[900],
                                          )),
                                      TextSpan(
                                          text: model.userMain.getSubj(),
                                          style: TextStyle(
                                              color: Colors.yellow[700])),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 400,
                                    height: 30,
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.blue,
                                            offset: Offset(5, 5))
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                          style: const TextStyle(
                                            fontFamily: 'upheavtt',
                                            fontSize: 16,
                                          ),
                                          children: [
                                            TextSpan(
                                                text: 'Ano: ',
                                                style: TextStyle(
                                                  color: Colors.blue[900],
                                                )),
                                            TextSpan(
                                                text: model.userMain.getYear(),
                                                style: TextStyle(
                                                  color: Colors.yellow[700],
                                                )),
                                          ]),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          355,
                                      height: 30,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.blue,
                                              offset: Offset(5, 5))
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                            style: const TextStyle(
                                              fontFamily: 'upheavtt',
                                              fontSize: 16,
                                            ),
                                            children: [
                                              TextSpan(
                                                  text: 'Semestre: ',
                                                  style: TextStyle(
                                                    color: Colors.blue[900],
                                                  )),
                                              TextSpan(
                                                  text:
                                                      model.userMain.getSeme(),
                                                  style: TextStyle(
                                                    color: Colors.yellow[700],
                                                  )),
                                            ]),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          380,
                                      height: 30,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        boxShadow: const [
                                          BoxShadow(
                                              color: Colors.blue,
                                              offset: Offset(5, 5))
                                        ],
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                            style: const TextStyle(
                                              fontFamily: 'upheavtt',
                                              fontSize: 16,
                                            ),
                                            children: [
                                              TextSpan(
                                                  text: 'Etapa: ',
                                                  style: TextStyle(
                                                    color: Colors.blue[900],
                                                  )),
                                              TextSpan(
                                                  text:
                                                      model.userMain.getEphoc(),
                                                  style: TextStyle(
                                                    color: Colors.yellow[700],
                                                  )),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Container(
                                width: MediaQuery.of(context).size.width - 125,
                                height: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Colors.blue,
                                        offset: Offset(5, 5))
                                  ],
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                      style: const TextStyle(
                                        fontFamily: 'upheavtt',
                                        fontSize: 16,
                                      ),
                                      children: [
                                        TextSpan(
                                            text: 'Campus: ',
                                            style: TextStyle(
                                              color: Colors.blue[900],
                                            )),
                                        TextSpan(
                                            text: model.userMain.getColl(),
                                            style: TextStyle(
                                              color: Colors.yellow[700],
                                            )),
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
