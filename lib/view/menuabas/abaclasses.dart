import 'package:flutter/material.dart';
import 'package:myproject/controller/user_controller.dart';
import 'package:scoped_model/scoped_model.dart';

class AbaClasses extends StatefulWidget {
  const AbaClasses({super.key});

  @override
  State<AbaClasses> createState() => _AbaClassesState();
}

class _AbaClassesState extends State<AbaClasses> {
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
                        'Aulas',
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
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 80,
                              height: 175,
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
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              140,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.blue,
                                          ),
                                          child: const Center(
                                            child: Text(
                                              'Segunda-feira:',
                                              style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  color: Colors.white,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.add_box_rounded))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width -
                                          100,
                                      height: 100,
                                      child: ListView(
                                        children: [
                                          const ListTile(),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 10),
                                            child: Text(
                                              'Parcial: aguardando',
                                              style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  color: Colors.blue[900],
                                                  fontSize: 16),
                                            ),
                                          ),
                                          const Divider(
                                            color: Colors.blue,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 10),
                                            child: Text(
                                              'Final: aguardando',
                                              style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  color: Colors.blue[900],
                                                  fontSize: 16),
                                            ),
                                          ),
                                          const Divider(
                                            color: Colors.blue,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 10),
                                            child: Text(
                                              'Média: aguardando',
                                              style: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  color: Colors.blue[900],
                                                  fontSize: 16),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 80,
                              height: 175,
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
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width -
                                          125,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.blue,
                                      ),
                                      child: const Center(
                                        child: Text(
                                          'Novas tecnologias de informação e comunicação',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontFamily: 'upheavtt',
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: Text(
                                      'Parcial: aguardando',
                                      style: TextStyle(
                                          fontFamily: 'upheavtt',
                                          color: Colors.blue[900],
                                          fontSize: 16),
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: Text(
                                      'Final: aguardando',
                                      style: TextStyle(
                                          fontFamily: 'upheavtt',
                                          color: Colors.blue[900],
                                          fontSize: 16),
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.blue,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    child: Text(
                                      'Média: aguardando',
                                      style: TextStyle(
                                          fontFamily: 'upheavtt',
                                          color: Colors.blue[900],
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
