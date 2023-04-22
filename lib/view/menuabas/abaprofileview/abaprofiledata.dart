import 'package:flutter/material.dart';

class AbaProfileData extends StatefulWidget {
  const AbaProfileData({super.key});

  @override
  State<AbaProfileData> createState() => _AbaProfileDataState();
}

class _AbaProfileDataState extends State<AbaProfileData> {
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
                  height: 500,
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
                        'Nome Completo:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'Anonimo',
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
                        'Data de nascimento:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: '01/01/2001',
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
                        'CPF:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: '11111111191',
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
                        'RG:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: '11.111.111-8',
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
                        'E-mail:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'anonimo@hotmail.com',
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
                        'Telefone:',
                        style: TextStyle(
                            fontFamily: 'upheavtt',
                            color: Colors.blue[900],
                            fontSize: 16),
                      ),
                      TextField(
                        textAlignVertical: TextAlignVertical.center,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: '1612345678',
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
                                        'Informações salvas com sucesso!!'),
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
