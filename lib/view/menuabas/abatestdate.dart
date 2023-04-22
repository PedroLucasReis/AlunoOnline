import 'package:flutter/material.dart';

class AbaTestDate extends StatefulWidget {
  const AbaTestDate({super.key});

  @override
  State<AbaTestDate> createState() => _AbaTestDateState();
}

class _AbaTestDateState extends State<AbaTestDate> {
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
              child: Center(
                child: Text(
                  'Data das provas',
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
                height: 470,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueGrey),
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Abril',
                              style: TextStyle(
                                  fontFamily: 'upheavtt',
                                  color: Colors.white,
                                  fontSize: 16),
                            ),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width - 80,
                        height: 410,
                        child: Center(
                            child: GridView.count(
                          crossAxisCount: 7,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.yellow[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Dom',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.yellow[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Seg',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.yellow[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Ter',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.yellow[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Qua',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.yellow[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Qui',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.yellow[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Sex',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.yellow[800],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Sab',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '7',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '8',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '9',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '10',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '11',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '12',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '13',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '14',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '15',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '16',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '17',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '18',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '19',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '20',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '21',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '22',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '23',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '24',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '25',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '26',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '27',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '28',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '29',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  '30',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blueGrey,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.blueGrey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        )),
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
                height: 100,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 125,
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
                        'Engenharia de software',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width:
                                (MediaQuery.of(context).size.width - 145) / 2,
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
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    style: const TextStyle(
                                        fontFamily: 'upheavtt', fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: 'Dia:  ',
                                        style: TextStyle(
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                      TextSpan(
                                        text: '24',
                                        style: TextStyle(
                                          color: Colors.yellow[800],
                                        ),
                                      )
                                    ])),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width:
                                (MediaQuery.of(context).size.width - 145) / 2,
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
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    style: const TextStyle(
                                        fontFamily: 'upheavtt', fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: 'Hora:  ',
                                        style: TextStyle(
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                      TextSpan(
                                        text: '10:45',
                                        style: TextStyle(
                                          color: Colors.yellow[800],
                                        ),
                                      )
                                    ])),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 130,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  boxShadow: const [
                    BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                  ],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 125,
                      height: 45,
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
                        'Novas tecnologias de informação e comunicação',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width:
                                (MediaQuery.of(context).size.width - 145) / 2,
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
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    style: const TextStyle(
                                        fontFamily: 'upheavtt', fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: 'Dia:  ',
                                        style: TextStyle(
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                      TextSpan(
                                        text: '25',
                                        style: TextStyle(
                                          color: Colors.yellow[800],
                                        ),
                                      )
                                    ])),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            width:
                                (MediaQuery.of(context).size.width - 145) / 2,
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
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    style: const TextStyle(
                                        fontFamily: 'upheavtt', fontSize: 16),
                                    children: [
                                      TextSpan(
                                        text: 'Hora:  ',
                                        style: TextStyle(
                                          color: Colors.blue[900],
                                        ),
                                      ),
                                      TextSpan(
                                        text: '08:50',
                                        style: TextStyle(
                                          color: Colors.yellow[800],
                                        ),
                                      )
                                    ])),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
