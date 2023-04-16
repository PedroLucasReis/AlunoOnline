import 'package:flutter/material.dart';

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
      body: Column(
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
                          BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: const CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('images/anonimo.jpg')),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width - 220,
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
                                        text: 'Nome: ',
                                        style: TextStyle(
                                          color: Colors.blue[900],
                                        )),
                                    TextSpan(
                                        text: 'Anonimo',
                                        style: TextStyle(
                                            color: Colors.yellow[700])),
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 220,
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
                                          text: 'Código: ',
                                          style: TextStyle(
                                            color: Colors.blue[900],
                                          )),
                                      TextSpan(
                                          text: '123456',
                                          style: TextStyle(
                                              color: Colors.yellow[700])),
                                    ]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
