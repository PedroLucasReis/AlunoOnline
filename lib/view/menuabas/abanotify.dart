// ignore_for_file: depend_on_referenced_packages

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../../controller/user_controller.dart';

class AbaNotify extends StatefulWidget {
  const AbaNotify({super.key});

  @override
  State<AbaNotify> createState() => _AbaNotifyState();
}

class _AbaNotifyState extends State<AbaNotify> {
  late TextEditingController _titlecontroller;
  late TextEditingController _mescontroller;

  @override
  void initState() {
    super.initState();

    _titlecontroller = TextEditingController();
    _mescontroller = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: ScopedModelDescendant<UserController>(
            builder: (context, child, model) {
          return SingleChildScrollView(
              child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width - 115,
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
                        'Avisos',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return SimpleDialog(
                                  title: const Text('Abrir requerimento:'),
                                  titleTextStyle: TextStyle(
                                      fontFamily: 'upheavtt',
                                      color: Colors.blue[900],
                                      fontSize: 16),
                                  backgroundColor: Colors.white,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24),
                                      child: Text(
                                        'Titulo:',
                                        style: TextStyle(
                                            fontFamily: 'upheavtt',
                                            color: Colors.blue[900],
                                            fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 10),
                                      child: TextField(
                                        controller: _titlecontroller,
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            fillColor: Colors.blue,
                                            enabledBorder:
                                                const OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.blue)),
                                            suffixIcon:
                                                const Icon(Icons.email_rounded),
                                            suffixIconColor: Colors.blue[900]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24),
                                      child: Text(
                                        'Mensagem:',
                                        style: TextStyle(
                                            fontFamily: 'upheavtt',
                                            color: Colors.blue[900],
                                            fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 24, vertical: 10),
                                      child: SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: TextField(
                                          minLines: 5,
                                          maxLines: 5,
                                          controller: _mescontroller,
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: const InputDecoration(
                                            fillColor: Colors.blue,
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SimpleDialogOption(
                                      child: Text(
                                        'Salvar',
                                        style: TextStyle(
                                            fontFamily: 'upheavtt',
                                            color: Colors.blue[900],
                                            shadows: const [
                                              Shadow(
                                                  color: Colors.blue,
                                                  offset: Offset(1, 1),
                                                  blurRadius: 1)
                                            ],
                                            fontSize: 16),
                                      ),
                                      onPressed: () {
                                        if (_titlecontroller.text.isEmpty) {
                                          Navigator.pop(context);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5)),
                                                      side: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 13, 71, 161),
                                                      )),
                                              content: Text(
                                                'O Titulo não pode ser vazio!',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.blue[900],
                                                  fontFamily: "upheavtt",
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              backgroundColor: Colors.white,
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              clipBehavior: Clip.antiAlias,
                                            ),
                                          );
                                        } else if (_mescontroller
                                            .text.isEmpty) {
                                          Navigator.pop(context);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            SnackBar(
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.circular(
                                                                  5)),
                                                      side: BorderSide(
                                                        color: Color.fromARGB(
                                                            255, 13, 71, 161),
                                                      )),
                                              content: Text(
                                                'A mensagem não pode ser vazia!',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.blue[900],
                                                  fontFamily: "upheavtt",
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              backgroundColor: Colors.white,
                                              behavior:
                                                  SnackBarBehavior.floating,
                                              clipBehavior: Clip.antiAlias,
                                            ),
                                          );
                                        } else {
                                          model.saveAlerts(
                                              title: _titlecontroller.text,
                                              mes: _mescontroller.text);
                                          Navigator.pop(context);
                                        }
                                      },
                                    )
                                  ],
                                );
                              });
                        });
                      },
                      icon: const Icon(
                        Icons.add_box_rounded,
                        size: 30,
                        color: Colors.white,
                        shadows: [Shadow(color: Colors.blue, blurRadius: 6)],
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  width: MediaQuery.of(context).size.width - 80,
                  height: 500,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    boxShadow: const [
                      BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('alerts')
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return Text(
                            'Erro ao carregar dados: ${snapshot.error}');
                      } else if (snapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const Text('Carregando...');
                      } else {
                        QuerySnapshot<Object?>? data = snapshot.data;
                        if (data != null) {
                          return ListView(
                            children:
                                data.docs.map((DocumentSnapshot document) {
                              String id = document.id;
                              return ListTile(
                                  title: Text(
                                    document['title'].toString(),
                                    style: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.yellow[900],
                                        fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    document['mes'].toString(),
                                    style: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16),
                                  ),
                                  trailing: Text(
                                    document['name'].toString(),
                                    style: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SimpleDialog(
                                              title:
                                                  const Text('Editar Aviso:'),
                                              titleTextStyle: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  color: Colors.blue[900],
                                                  fontSize: 16),
                                              backgroundColor: Colors.white,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 24),
                                                  child: Text(
                                                    'Titulo:',
                                                    style: TextStyle(
                                                        fontFamily: 'upheavtt',
                                                        color: Colors.blue[900],
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 24,
                                                      vertical: 10),
                                                  child: TextField(
                                                    controller:
                                                        _titlecontroller,
                                                    textAlignVertical:
                                                        TextAlignVertical
                                                            .center,
                                                    keyboardType:
                                                        TextInputType.number,
                                                    decoration: InputDecoration(
                                                        fillColor: Colors.blue,
                                                        enabledBorder:
                                                            const OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .blue)),
                                                        suffixIcon: const Icon(
                                                            Icons
                                                                .email_rounded),
                                                        suffixIconColor:
                                                            Colors.blue[900]),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 24),
                                                  child: Text(
                                                    'Mensagem:',
                                                    style: TextStyle(
                                                        fontFamily: 'upheavtt',
                                                        color: Colors.blue[900],
                                                        fontSize: 16),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 24,
                                                      vertical: 10),
                                                  child: SizedBox(
                                                    height: 100,
                                                    width: 100,
                                                    child: TextField(
                                                      minLines: 5,
                                                      maxLines: 5,
                                                      controller:
                                                          _mescontroller,
                                                      textAlignVertical:
                                                          TextAlignVertical
                                                              .center,
                                                      decoration:
                                                          const InputDecoration(
                                                        fillColor: Colors.blue,
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .blue)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SimpleDialogOption(
                                                  child: Text(
                                                    'Salvar',
                                                    style: TextStyle(
                                                        fontFamily: 'upheavtt',
                                                        color: Colors.blue[900],
                                                        shadows: const [
                                                          Shadow(
                                                              color:
                                                                  Colors.blue,
                                                              offset:
                                                                  Offset(1, 1),
                                                              blurRadius: 1)
                                                        ],
                                                        fontSize: 16),
                                                  ),
                                                  onPressed: () {
                                                    if (_titlecontroller
                                                        .text.isEmpty) {
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          shape:
                                                              const RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              5)),
                                                                  side:
                                                                      BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            13,
                                                                            71,
                                                                            161),
                                                                  )),
                                                          content: Text(
                                                            'O Titulo não pode ser vazio!',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .blue[900],
                                                              fontFamily:
                                                                  "upheavtt",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          backgroundColor:
                                                              Colors.white,
                                                          behavior:
                                                              SnackBarBehavior
                                                                  .floating,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                        ),
                                                      );
                                                    } else if (_mescontroller
                                                        .text.isEmpty) {
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          shape:
                                                              const RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius.all(
                                                                          Radius.circular(
                                                                              5)),
                                                                  side:
                                                                      BorderSide(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            13,
                                                                            71,
                                                                            161),
                                                                  )),
                                                          content: Text(
                                                            'A Mensagem não pode ser vazia!',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: Colors
                                                                  .blue[900],
                                                              fontFamily:
                                                                  "upheavtt",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                          backgroundColor:
                                                              Colors.white,
                                                          behavior:
                                                              SnackBarBehavior
                                                                  .floating,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                        ),
                                                      );
                                                    } else {
                                                      model.editAlerts(
                                                        title: _titlecontroller
                                                            .text,
                                                        mes:
                                                            _mescontroller.text,
                                                        id: id,
                                                      );

                                                      Navigator.pop(context);
                                                    }
                                                  },
                                                )
                                              ],
                                            );
                                          });
                                    });
                                  });
                            }).toList(),
                          );
                        } else {
                          return ListView();
                        }
                      }
                    },
                  ),
                ),
              ),
            ],
          ));
        }));
  }
}
