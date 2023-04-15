import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animate_gradient/animate_gradient.dart';
import 'package:myproject/mywidgets/verticalbarscreenview.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  bool sobre = false;

  @override
  Widget build(BuildContext context) {
    return AnimateGradient(
      primaryColors: const [Colors.white, Colors.blue],
      secondaryColors: const [Colors.yellow, Colors.white],
      primaryBegin: Alignment.topCenter,
      primaryEnd: Alignment.bottomCenter,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  PageView(
                    scrollDirection: Axis.vertical,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 85 / 100,
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
                              sobre = !sobre;
                            });
                          },
                          children: [
                            ExpansionPanel(
                                backgroundColor: Colors.white,
                                isExpanded: sobre,
                                canTapOnHeader: true,
                                headerBuilder:
                                    (BuildContext context, bool isExpanded) {
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
                                            color: Colors.blue,
                                            offset: Offset(5, 5))
                                      ],
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 10),
                                          child: RichText(
                                            text: TextSpan(
                                                style: const TextStyle(
                                                    fontFamily: 'upheavtt',
                                                    fontSize: 16),
                                                children: [
                                                  TextSpan(
                                                      text: 'Sobre ',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .yellow[700])),
                                                  TextSpan(
                                                      text: 'desenvolvedores:',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blue[900]))
                                                ]),
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 2,
                                          color: Colors.blue,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 20,
                                              left: 20,
                                              bottom: 10,
                                              top: 20),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  border: Border.all(
                                                      color: Colors.yellow),
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      color: Colors.yellow,
                                                      offset: Offset(5, 5),
                                                    )
                                                  ]),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                      radius: 50,
                                                      backgroundImage: AssetImage(
                                                          'images/pedro.jpeg')),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                              style: const TextStyle(
                                                                  fontFamily:
                                                                      'upheavtt',
                                                                  fontSize: 16),
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        'Nome: ',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .yellow[700])),
                                                                TextSpan(
                                                                    text:
                                                                        'Pedro Lucas Correia\ndos Reis',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .blue[900]))
                                                              ]),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10),
                                                          child: RichText(
                                                            text: TextSpan(
                                                                style: const TextStyle(
                                                                    fontFamily:
                                                                        'upheavtt',
                                                                    fontSize:
                                                                        16),
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Código: ',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.yellow[700])),
                                                                  TextSpan(
                                                                      text:
                                                                          '834539',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.blue[900]))
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
                                              right: 20,
                                              left: 20,
                                              bottom: 20,
                                              top: 10),
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  border: Border.all(
                                                      color: Colors.yellow),
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
                                                      backgroundImage: AssetImage(
                                                          'images/henrique.jpeg')),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(5),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        RichText(
                                                          text: TextSpan(
                                                              style: const TextStyle(
                                                                  fontFamily:
                                                                      'upheavtt',
                                                                  fontSize: 16),
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        'Nome: ',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .yellow[700])),
                                                                TextSpan(
                                                                    text:
                                                                        'Henrique Neves\nIgnácio',
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .blue[900]))
                                                              ]),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .only(
                                                                  top: 10),
                                                          child: RichText(
                                                            text: TextSpan(
                                                                style: const TextStyle(
                                                                    fontFamily:
                                                                        'upheavtt',
                                                                    fontSize:
                                                                        16),
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                          'Código: ',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.yellow[700])),
                                                                  TextSpan(
                                                                      text:
                                                                          '834487',
                                                                      style: TextStyle(
                                                                          color:
                                                                              Colors.blue[900]))
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
                                ))
                          ]),
                    ),
                  )
                ],
              ),
              VerticalBarScreenView(),
            ],
          )),
    );
  }
}
