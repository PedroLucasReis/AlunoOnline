import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool perfil = false;

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
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                boxShadow: const [
                  BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                ],
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: ExpansionPanelList(
                elevation: 0,
                expansionCallback: (int index, bool isExpanded) {
                  setState(() {
                    perfil = !perfil;
                  });
                },
                children: [
                  ExpansionPanel(
                      backgroundColor: Colors.white,
                      isExpanded: perfil,
                      canTapOnHeader: true,
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Center(
                          child: Text(
                            'Olá, seja bem-vindo(a)!',
                            style: TextStyle(
                                fontFamily: 'upheavtt',
                                color: Colors.blue[900],
                                fontSize: 16),
                          ),
                        );
                      },
                      body: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 10),
                                child: Text(
                                  'Desenvolvedores:',
                                  style: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blue[900],
                                      fontSize: 16),
                                ),
                              ),
                              const Divider(
                                thickness: 2,
                                color: Colors.blue,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 50,
                                          backgroundImage:
                                              AssetImage('images/pedro.jpeg')),
                                      Column(
                                        children: [],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Row(
                                    children: [
                                      CircleAvatar(
                                          radius: 50,
                                          backgroundImage: AssetImage(
                                              'images/henrique.jpeg')),
                                      Column(
                                        children: [],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
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
                  Text(
                    'Curso:',
                    style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Engenharia da Computação',
                    style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Email:',
                    style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
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
                  Text(
                    'Curso:',
                    style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Engenharia da Computação',
                    style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Email:',
                    style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
