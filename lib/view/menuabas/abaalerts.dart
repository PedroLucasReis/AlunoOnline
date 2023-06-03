// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:myproject/controller/user_controller.dart';
import 'package:scoped_model/scoped_model.dart';

class AbaAlerts extends StatefulWidget {
  const AbaAlerts({super.key});

  @override
  State<AbaAlerts> createState() => _AbaAlertsState();
}

class _AbaAlertsState extends State<AbaAlerts> {
  late TextEditingController _titlecontroller;
  late TextEditingController _descripcontroller;

  @override
  void initState() {
    super.initState();

    _titlecontroller = TextEditingController();
    _descripcontroller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ScopedModelDescendant<UserController>(
        builder: (context, child, model) {
          if (model.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                            width: MediaQuery.of(context).size.width - 150,
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
                            child: Text(
                              'Requerimentos',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'upheavtt',
                                  color: Colors.blue[900],
                                  fontSize: 16),
                            )),
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
                                            'Motivo:',
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
                                                            color:
                                                                Colors.blue)),
                                                suffixIcon: const Icon(
                                                    Icons.email_rounded),
                                                suffixIconColor:
                                                    Colors.blue[900]),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 24),
                                          child: Text(
                                            'Descrição:',
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
                                              controller: _descripcontroller,
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              decoration: const InputDecoration(
                                                fillColor: Colors.blue,
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.blue)),
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
                                                                  Radius
                                                                      .circular(
                                                                          5)),
                                                          side: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    13,
                                                                    71,
                                                                    161),
                                                          )),
                                                  content: Text(
                                                    'O motivo não pode ser vazio!',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.blue[900],
                                                      fontFamily: "upheavtt",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  backgroundColor: Colors.white,
                                                  behavior:
                                                      SnackBarBehavior.floating,
                                                  clipBehavior: Clip.antiAlias,
                                                ),
                                              );
                                            } else if (_descripcontroller
                                                .text.isEmpty) {
                                              Navigator.pop(context);
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          5)),
                                                          side: BorderSide(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    13,
                                                                    71,
                                                                    161),
                                                          )),
                                                  content: Text(
                                                    'A descrição não pode ser vazia!',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.blue[900],
                                                      fontFamily: "upheavtt",
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  backgroundColor: Colors.white,
                                                  behavior:
                                                      SnackBarBehavior.floating,
                                                  clipBehavior: Clip.antiAlias,
                                                ),
                                              );
                                            } else {
                                              model.saveRequer(
                                                  title: _titlecontroller.text,
                                                  descrip:
                                                      _descripcontroller.text);
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
                            shadows: [
                              Shadow(color: Colors.blue, blurRadius: 6)
                            ],
                          ))
                    ],
                  ),
                  SizedBox(
                      height: 500,
                      width: MediaQuery.of(context).size.width - 80,
                      child: ListView.builder(
                        itemCount: model.docs.length,
                        itemBuilder: (context, index) {
                          String id = model.docs[index].id;
                          dynamic item = model.docs[index].data();
                          return Card(
                            elevation: 2,
                            shadowColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: Colors.white,
                            child: ListTile(
                              title: Text(
                                item['title'],
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.yellow[900],
                                    fontSize: 20),
                              ),
                              leading: Text(
                                item['num'].toString(),
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                              subtitle: Text(
                                item['descrip'],
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    model.deleteRequer(id: id);
                                  },
                                  icon: const Icon(
                                    Icons.delete_outline_rounded,
                                    color: Colors.red,
                                  )),
                              style: ListTileStyle.list,
                              onTap: () {
                                setState(() {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return SimpleDialog(
                                          title: const Text(
                                              'Editar requerimento:'),
                                          titleTextStyle: TextStyle(
                                              fontFamily: 'upheavtt',
                                              color: Colors.blue[900],
                                              fontSize: 16),
                                          backgroundColor: Colors.white,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24),
                                              child: Text(
                                                'Motivo:',
                                                style: TextStyle(
                                                    fontFamily: 'upheavtt',
                                                    color: Colors.blue[900],
                                                    fontSize: 16),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24,
                                                      vertical: 10),
                                              child: TextField(
                                                controller: _titlecontroller,
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                keyboardType:
                                                    TextInputType.number,
                                                decoration: InputDecoration(
                                                    fillColor: Colors.blue,
                                                    enabledBorder:
                                                        const OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .blue)),
                                                    suffixIcon: const Icon(
                                                        Icons.email_rounded),
                                                    suffixIconColor:
                                                        Colors.blue[900]),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24),
                                              child: Text(
                                                'Descrição:',
                                                style: TextStyle(
                                                    fontFamily: 'upheavtt',
                                                    color: Colors.blue[900],
                                                    fontSize: 16),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 24,
                                                      vertical: 10),
                                              child: SizedBox(
                                                height: 100,
                                                width: 100,
                                                child: TextField(
                                                  minLines: 5,
                                                  maxLines: 5,
                                                  controller:
                                                      _descripcontroller,
                                                  textAlignVertical:
                                                      TextAlignVertical.center,
                                                  decoration:
                                                      const InputDecoration(
                                                    fillColor: Colors.blue,
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
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
                                                          color: Colors.blue,
                                                          offset: Offset(1, 1),
                                                          blurRadius: 1)
                                                    ],
                                                    fontSize: 16),
                                              ),
                                              onPressed: () {
                                                if (_titlecontroller
                                                    .text.isEmpty) {
                                                  Navigator.pop(context);
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      shape:
                                                          const RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              side: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        13,
                                                                        71,
                                                                        161),
                                                              )),
                                                      content: Text(
                                                        'O motivo não pode ser vazio!',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Colors.blue[900],
                                                          fontFamily:
                                                              "upheavtt",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      backgroundColor:
                                                          Colors.white,
                                                      behavior: SnackBarBehavior
                                                          .floating,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                    ),
                                                  );
                                                } else if (_descripcontroller
                                                    .text.isEmpty) {
                                                  Navigator.pop(context);
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      shape:
                                                          const RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(Radius
                                                                          .circular(
                                                                              5)),
                                                              side: BorderSide(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        13,
                                                                        71,
                                                                        161),
                                                              )),
                                                      content: Text(
                                                        'A descrição não pode ser vazia!',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Colors.blue[900],
                                                          fontFamily:
                                                              "upheavtt",
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      backgroundColor:
                                                          Colors.white,
                                                      behavior: SnackBarBehavior
                                                          .floating,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                    ),
                                                  );
                                                } else {
                                                  model.editRequer(
                                                      title:
                                                          _titlecontroller.text,
                                                      descrip:
                                                          _descripcontroller
                                                              .text,
                                                      id: id,
                                                      num0: item['num']);

                                                  Navigator.pop(context);
                                                }
                                              },
                                            )
                                          ],
                                        );
                                      });
                                });
                              },
                            ),
                          );
                        },
                      ))
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
