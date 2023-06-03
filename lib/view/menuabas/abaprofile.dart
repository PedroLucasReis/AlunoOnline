// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:myproject/controller/user_controller.dart';
import 'package:scoped_model/scoped_model.dart';

class AbaProfile extends StatefulWidget {
  const AbaProfile({super.key});

  @override
  State<AbaProfile> createState() => _AbaProfileState();
}

class _AbaProfileState extends State<AbaProfile> {
  late TextEditingController _namecontroller;
  late TextEditingController _yearcontroller;
  late TextEditingController _semecontroller;
  late TextEditingController _ephoccontroller;
  late TextEditingController _codecontroller;
  late TextEditingController _subjcontroller;
  late TextEditingController _collegcontroller;

  @override
  void initState() {
    _namecontroller = TextEditingController();
    _yearcontroller = TextEditingController();
    _semecontroller = TextEditingController();
    _ephoccontroller = TextEditingController();
    _codecontroller = TextEditingController();
    _subjcontroller = TextEditingController();
    _collegcontroller = TextEditingController();
    super.initState();
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
                      'Perfil',
                      style: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                          height: 430,
                          width: MediaQuery.of(context).size.width - 125,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.blue, offset: Offset(5, 5))
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
                                controller: _namecontroller,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    hintText: model.userMain.getName(),
                                    hintStyle: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16),
                                    fillColor: Colors.blue,
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
                                    suffixIconColor: Colors.blue[900]),
                              ),
                              const Divider(
                                color: Colors.blue,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width *
                                        20 /
                                        100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Ano:',
                                          style: TextStyle(
                                              fontFamily: 'upheavtt',
                                              color: Colors.blue[900],
                                              fontSize: 16),
                                        ),
                                        TextField(
                                          controller: _yearcontroller,
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          keyboardType: TextInputType.name,
                                          decoration: InputDecoration(
                                              hintText:
                                                  model.userMain.getYear(),
                                              hintStyle: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  color: Colors.blue[900],
                                                  fontSize: 16),
                                              fillColor: Colors.blue,
                                              enabledBorder:
                                                  const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.blue)),
                                              suffixIconColor:
                                                  Colors.blue[900]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: SizedBox(
                                      height: 70,
                                      width: MediaQuery.of(context).size.width *
                                          20 /
                                          100,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Semestre:',
                                            style: TextStyle(
                                                fontFamily: 'upheavtt',
                                                color: Colors.blue[900],
                                                fontSize: 16),
                                          ),
                                          TextField(
                                            controller: _semecontroller,
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            keyboardType: TextInputType.name,
                                            decoration: InputDecoration(
                                                hintText:
                                                    model.userMain.getSeme(),
                                                hintStyle: TextStyle(
                                                    fontFamily: 'upheavtt',
                                                    color: Colors.blue[900],
                                                    fontSize: 16),
                                                fillColor: Colors.blue,
                                                enabledBorder:
                                                    const OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color:
                                                                Colors.blue)),
                                                suffixIconColor:
                                                    Colors.blue[900]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                    width: MediaQuery.of(context).size.width *
                                        20 /
                                        100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Etapa:',
                                          style: TextStyle(
                                              fontFamily: 'upheavtt',
                                              color: Colors.blue[900],
                                              fontSize: 16),
                                        ),
                                        TextField(
                                          controller: _ephoccontroller,
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          keyboardType: TextInputType.name,
                                          decoration: InputDecoration(
                                              hintText:
                                                  model.userMain.getEphoc(),
                                              hintStyle: TextStyle(
                                                  fontFamily: 'upheavtt',
                                                  color: Colors.blue[900],
                                                  fontSize: 16),
                                              fillColor: Colors.blue,
                                              enabledBorder:
                                                  const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Colors.blue)),
                                              suffixIconColor:
                                                  Colors.blue[900]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(
                                color: Colors.blue,
                              ),
                              Text(
                                'Código:',
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                              TextField(
                                controller: _codecontroller,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    hintText: model.userMain.getCode(),
                                    hintStyle: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16),
                                    fillColor: Colors.blue,
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
                                    suffixIconColor: Colors.blue[900]),
                              ),
                              const Divider(
                                color: Colors.blue,
                              ),
                              Text(
                                'Curso:',
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                              TextField(
                                controller: _subjcontroller,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    hintText: model.userMain.getSubj(),
                                    hintStyle: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16),
                                    fillColor: Colors.blue,
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
                                    suffixIconColor: Colors.blue[900]),
                              ),
                              const Divider(
                                color: Colors.blue,
                              ),
                              Text(
                                'Campus:',
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                              TextField(
                                controller: _collegcontroller,
                                textAlignVertical: TextAlignVertical.center,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                    hintText: model.userMain.getColl(),
                                    hintStyle: TextStyle(
                                        fontFamily: 'upheavtt',
                                        color: Colors.blue[900],
                                        fontSize: 16),
                                    fillColor: Colors.blue,
                                    enabledBorder: const OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue)),
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
                                BoxShadow(
                                    color: Colors.blue, offset: Offset(5, 5))
                              ],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.blue,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    fixedSize: Size(
                                        MediaQuery.of(context).size.width - 125,
                                        60)),
                                onPressed: () {
                                  Map<String, dynamic> profile = {
                                    'name': _namecontroller.text,
                                    'code': _codecontroller.text,
                                    'year': _yearcontroller.text,
                                    'seme': _semecontroller.text,
                                    'ephoc': _ephoccontroller.text,
                                    'subj': _subjcontroller.text,
                                    'coll': _collegcontroller.text
                                  };

                                  if (_namecontroller.text.isEmpty) {
                                    profile['name'] = model.userMain.getName();
                                  }
                                  if (_codecontroller.text.length != 8) {
                                    profile['code'] = model.userMain.getCode();
                                    if (_codecontroller.text.isNotEmpty) {
                                      _onFailCode();
                                    }
                                  }
                                  if (_yearcontroller.text.length != 4) {
                                    if (_codecontroller.text.isNotEmpty) {
                                      _onFailYear();
                                    }
                                    profile['year'] = model.userMain.getYear();
                                  }
                                  if (_semecontroller.text.isEmpty) {
                                    profile['seme'] = model.userMain.getSeme();
                                  }
                                  if (_ephoccontroller.text.isEmpty) {
                                    profile['ephoc'] =
                                        model.userMain.getEphoc();
                                  }
                                  if (_subjcontroller.text.isEmpty) {
                                    profile['subj'] = model.userMain.getSubj();
                                  }
                                  if (_collegcontroller.text.isEmpty) {
                                    profile['coll'] = model.userMain.getColl();
                                  }

                                  model.saveUserDataSecond(
                                      name: profile['name'],
                                      code: profile['code'],
                                      year: profile['year'],
                                      seme: profile['seme'],
                                      ephoc: profile['ephoc'],
                                      subj: profile['subj'],
                                      coll: profile['coll'],
                                      onSuccess: _onSuccess,
                                      onFail: _onFail);

                                  _namecontroller.clear();
                                  _codecontroller.clear();
                                  _yearcontroller.clear();
                                  _semecontroller.clear();
                                  _ephoccontroller.clear();
                                  _subjcontroller.clear();
                                  _collegcontroller.clear();
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
              ],
            ),
          );
        }
      }),
    );
  }

  void _onSuccess() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'Perfil editado com sucesso!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void _onFail() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'Falha ao editar o perfil!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void _onFailCode() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'O codigo precisa de 8 digitos para ser alterado!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void _onFailYear() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide(
              color: Color.fromARGB(255, 13, 71, 161),
            )),
        content: Text(
          'O ano deve ser formado por 4 digitos para ser alterado!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontFamily: "upheavtt",
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
