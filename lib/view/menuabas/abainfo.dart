import 'package:flutter/material.dart';

class AbaInfo extends StatefulWidget {
  const AbaInfo({super.key});

  @override
  State<AbaInfo> createState() => _AbaInfoState();
}

class _AbaInfoState extends State<AbaInfo> {
  bool sobre = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(children: [
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
                child: Text(
                  'Sobre:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
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
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                fontFamily: 'upheavtt', fontSize: 16),
                            children: [
                              TextSpan(
                                  text: 'Sobre ',
                                  style: TextStyle(color: Colors.yellow[700])),
                              TextSpan(
                                  text: 'desenvolvedores:',
                                  style: TextStyle(color: Colors.blue[900]))
                            ]),
                      ),
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 10, top: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.yellow),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.yellow,
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('images/pedro.jpeg')),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          style: const TextStyle(
                                              fontFamily: 'upheavtt',
                                              fontSize: 16),
                                          children: [
                                            TextSpan(
                                                text: 'Nome: ',
                                                style: TextStyle(
                                                    color: Colors.yellow[700])),
                                            TextSpan(
                                                text:
                                                    'Pedro Lucas Correia\ndos Reis',
                                                style: TextStyle(
                                                    color: Colors.blue[900]))
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: RichText(
                                        text: TextSpan(
                                            style: const TextStyle(
                                                fontFamily: 'upheavtt',
                                                fontSize: 16),
                                            children: [
                                              TextSpan(
                                                  text: 'Código: ',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.yellow[700])),
                                              TextSpan(
                                                  text: '834539',
                                                  style: TextStyle(
                                                      color: Colors.blue[900]))
                                            ]),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 20, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.yellow),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.yellow,
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      AssetImage('images/henrique.jpeg')),
                              Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                          style: const TextStyle(
                                              fontFamily: 'upheavtt',
                                              fontSize: 16),
                                          children: [
                                            TextSpan(
                                                text: 'Nome: ',
                                                style: TextStyle(
                                                    color: Colors.yellow[700])),
                                            TextSpan(
                                                text: 'Henrique Neves\nIgnácio',
                                                style: TextStyle(
                                                    color: Colors.blue[900]))
                                          ]),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: RichText(
                                        text: TextSpan(
                                            style: const TextStyle(
                                                fontFamily: 'upheavtt',
                                                fontSize: 16),
                                            children: [
                                              TextSpan(
                                                  text: 'Código: ',
                                                  style: TextStyle(
                                                      color:
                                                          Colors.yellow[700])),
                                              TextSpan(
                                                  text: '834487',
                                                  style: TextStyle(
                                                      color: Colors.blue[900]))
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: RichText(
                  text: TextSpan(
                      style:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 16),
                      children: [
                        TextSpan(
                            text: 'Tema escolhido: ',
                            style: TextStyle(color: Colors.yellow[700])),
                        TextSpan(
                            text: 'Opção 1 - Tema Livre',
                            style: TextStyle(color: Colors.blue[900]))
                      ]),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: RichText(
                  text: TextSpan(
                      style:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 16),
                      children: [
                        TextSpan(
                            text: 'Objetivo do aplicativo: ',
                            style: TextStyle(color: Colors.yellow[700])),
                        TextSpan(
                            text:
                                'reestruturar o aluno online usado pela Unaerp',
                            style: TextStyle(color: Colors.blue[900]))
                      ]),
                ),
              ),
            ),
          ]),
        ));
  }
}
