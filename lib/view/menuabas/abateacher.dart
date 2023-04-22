import 'package:flutter/material.dart';

class AbaTeacher extends StatefulWidget {
  const AbaTeacher({super.key});

  @override
  State<AbaTeacher> createState() => _AbaTeacherState();
}

class _AbaTeacherState extends State<AbaTeacher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
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
                child: Text(
                  'Professores:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 80,
                height: 375,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 10, top: 20),
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
                                    AssetImage('images/fernando.jpeg')),
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
                                              text: 'Professor: ',
                                              style: TextStyle(
                                                  color: Colors.yellow[700])),
                                          TextSpan(
                                              text:
                                                  'Fernando Marco\nPerez Campos',
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
                                                text: 'Matéria: ',
                                                style: TextStyle(
                                                    color: Colors.yellow[700])),
                                            TextSpan(
                                                text: 'Engenharia de\nsoftware',
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
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 10, top: 20),
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
                                    AssetImage('images/plotze.jpeg')),
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
                                              text: 'Professor: ',
                                              style: TextStyle(
                                                  color: Colors.yellow[700])),
                                          TextSpan(
                                              text:
                                                  'Rodrigo de\nOliveira plotze',
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
                                                text: 'Matéria: ',
                                                style: TextStyle(
                                                    color: Colors.yellow[700])),
                                            TextSpan(
                                                text:
                                                    'Novas tecnologias\nde informação e\ncomunicação',
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
