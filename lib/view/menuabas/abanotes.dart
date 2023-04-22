import 'package:flutter/material.dart';

class AbaNotes extends StatefulWidget {
  const AbaNotes({super.key});

  @override
  State<AbaNotes> createState() => _AbaNotesState();
}

class _AbaNotesState extends State<AbaNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        width: MediaQuery.of(context).size.width - 80,
        height: 450,
        padding: const EdgeInsets.all(10),
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
                  'Boletim:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 125,
                height: 375,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 125,
                        height: 175,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          boxShadow: const [
                            BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: MediaQuery.of(context).size.width - 135,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue,
                                ),
                                child: const Center(
                                  child: Text(
                                    'Engenharia de software',
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 125,
                        height: 175,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          boxShadow: const [
                            BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                          ],
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Container(
                                width: MediaQuery.of(context).size.width - 135,
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
      ),
    );
  }
}
