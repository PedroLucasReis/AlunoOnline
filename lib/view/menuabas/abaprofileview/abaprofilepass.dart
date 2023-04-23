import 'package:flutter/material.dart';

class AbaProfilePass extends StatefulWidget {
  const AbaProfilePass({super.key});

  @override
  State<AbaProfilePass> createState() => _AbaProfilePassState();
}

class _AbaProfilePassState extends State<AbaProfilePass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: Container(
            width: MediaQuery.of(context).size.width - 80,
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
              children: [
                Container(
                  height: 265,
                  width: MediaQuery.of(context).size.width - 125,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    boxShadow: const [
                      BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: [
                      Text(
                        'Senha atual:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontFamily: 'upheavtt',
                                color: Colors.blue[900],
                                fontSize: 16),
                            fillColor: Colors.blue,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            suffixIconColor: Colors.blue[900]),
                      ),
                      const Divider(
                        color: Colors.blue,
                      ),
                      Text(
                        'Nova senha:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontFamily: 'upheavtt',
                                color: Colors.blue[900],
                                fontSize: 16),
                            fillColor: Colors.blue,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            suffixIconColor: Colors.blue[900]),
                      ),
                      const Divider(
                        color: Colors.blue,
                      ),
                      Text(
                        'Confirmação de senha:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                            hintStyle: TextStyle(
                                fontFamily: 'upheavtt',
                                color: Colors.blue[900],
                                fontSize: 16),
                            fillColor: Colors.blue,
                            enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            suffixIconColor: Colors.blue[900]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 125,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      boxShadow: const [
                        BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.blue,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            fixedSize: Size(
                                MediaQuery.of(context).size.width - 125, 60)),
                        onPressed: () {
                          setState(() {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text(
                                        'Nova senha salva com sucesso!!'),
                                    icon: const Icon(
                                      Icons.check_box_rounded,
                                      size: 100,
                                    ),
                                    iconColor: Colors.yellow,
                                    titleTextStyle: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16),
                                    backgroundColor: Colors.white,
                                  );
                                });
                          });
                        },
                        child: const Text(
                          'Salvar',
                          style: TextStyle(
                              fontFamily: 'upheavtt',
                              color: Colors.blue,
                              fontSize: 16),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
