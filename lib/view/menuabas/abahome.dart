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
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blue),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.blue, offset: Offset(5, 5))
                                ],
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: const CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('images/anonimo.jpg')),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 220,
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
                                      width: MediaQuery.of(context).size.width -
                                          220,
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
                        height: 205,
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
                                          text: 'Engenharia da computação',
                                          style: TextStyle(
                                              color: Colors.yellow[700])),
                                    ]),
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
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: RichText(
                                    text: TextSpan(
                                        style: const TextStyle(
                                          fontFamily: 'upheavtt',
                                          fontSize: 16,
                                        ),
                                        children: [
                                          TextSpan(
                                              text: 'Google Classroom: ',
                                              style: TextStyle(
                                                color: Colors.blue[900],
                                              )),
                                          TextSpan(
                                              text: 'anonimo@sou.unaerp.edu.br',
                                              style: TextStyle(
                                                color: Colors.yellow[700],
                                              )),
                                        ]),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 350,
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
                                                text: 'Ano/Sem: ',
                                                style: TextStyle(
                                                  color: Colors.blue[900],
                                                )),
                                            TextSpan(
                                                text: '2023/1',
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
                                          405,
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
                                      child: Center(
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
                                                    text: '7',
                                                    style: TextStyle(
                                                      color: Colors.yellow[700],
                                                    )),
                                              ]),
                                        ),
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
                                      child: Center(
                                        child: RichText(
                                          text: TextSpan(
                                              style: const TextStyle(
                                                fontFamily: 'upheavtt',
                                                fontSize: 16,
                                              ),
                                              children: [
                                                TextSpan(
                                                    text: 'Curr: ',
                                                    style: TextStyle(
                                                      color: Colors.blue[900],
                                                    )),
                                                TextSpan(
                                                    text: '1234',
                                                    style: TextStyle(
                                                      color: Colors.yellow[700],
                                                    )),
                                              ]),
                                        ),
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
                                            text: 'Ribeirão Preto',
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
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 400,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          boxShadow: const [
                            BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width - 125,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.blue, offset: Offset(5, 5))
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, left: 10),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: Icon(
                                        Icons.school_rounded,
                                        color: Colors.blue[900],
                                      ),
                                    ),
                                    Text(
                                      'Aulas de hoje',
                                      style: TextStyle(
                                        fontFamily: 'upheavtt',
                                        fontSize: 16,
                                        color: Colors.blue[900],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Divider(
                                color: Colors.blue,
                                thickness: 2,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  150) /
                                              4,
                                      child: const Center(
                                          child: Icon(
                                        Icons.pin_drop_rounded,
                                        color: Color.fromARGB(255, 13, 71, 161),
                                      ))),
                                  SizedBox(
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        4,
                                    child: const Center(
                                      child: Icon(
                                        Icons.menu_book_rounded,
                                        color: Color.fromARGB(255, 13, 71, 161),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  150) /
                                              4,
                                      child: const Center(
                                          child: Icon(
                                        Icons.access_time_filled_rounded,
                                        color: Color.fromARGB(255, 13, 71, 161),
                                      ))),
                                  SizedBox(
                                      width:
                                          (MediaQuery.of(context).size.width -
                                                  150) /
                                              4,
                                      child: const Center(
                                          child: Icon(
                                        Icons.check_box_rounded,
                                        color: Color.fromARGB(255, 13, 71, 161),
                                      ))),
                                ],
                              ),
                              const Divider(
                                color: Colors.blue,
                                thickness: 1,
                                indent: 5,
                                endIndent: 5,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 125,
                                height: 265,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 5, right: 5),
                                  child: ListView(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '06A',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    100) /
                                                4,
                                            child: const Center(
                                              child: Text(
                                                'Engenharia de Software',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '07:10',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '0/20',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.blue,
                                        thickness: 1,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '06A',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    100) /
                                                4,
                                            child: const Center(
                                              child: Text(
                                                'Engenharia de Software',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '08:00',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '0/20',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.blue,
                                        thickness: 1,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '36B',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    100) /
                                                4,
                                            child: const Center(
                                              child: Text(
                                                'Novas tecnologias de informação e comunicação',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '08:50',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '0/20',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.blue,
                                        thickness: 1,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '36B',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    100) /
                                                4,
                                            child: const Center(
                                              child: Text(
                                                'Novas tecnologias de informação e comunicação',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '09:55',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '0/20',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.blue,
                                        thickness: 1,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '05A',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    100) /
                                                4,
                                            child: const Center(
                                              child: Text(
                                                'Novas tecnologias de informação e comunicação',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '10:45',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '0/20',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.blue,
                                        thickness: 1,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '05A',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                            width: (MediaQuery.of(context)
                                                        .size
                                                        .width -
                                                    100) /
                                                4,
                                            child: const Center(
                                              child: Text(
                                                'Novas tecnologias de informação e comunicação',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '11:35',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                          SizedBox(
                                              width: (MediaQuery.of(context)
                                                          .size
                                                          .width -
                                                      150) /
                                                  4,
                                              child: const Center(
                                                  child: Text(
                                                '0/20',
                                                style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  fontSize: 15,
                                                  color: Colors.blue,
                                                ),
                                              ))),
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.blue,
                                        thickness: 1,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  )
                ],
              ),
            );
          },
        ));
  }
}
