import 'package:flutter/material.dart';

class AbaFinancial extends StatefulWidget {
  const AbaFinancial({super.key});

  @override
  State<AbaFinancial> createState() => _AbaFinancialState();
}

class _AbaFinancialState extends State<AbaFinancial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
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
                  'Financeiro:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16),
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 200,
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 125,
                        height: 50,
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
                            'Parcela: 10/05/2023',
                            style: TextStyle(
                                fontFamily: 'upheavtt',
                                color: Colors.blue[900],
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 125,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 150) / 2,
                              child: Text(
                                'Valor:',
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 150) / 2,
                              child: Text(
                                'R\$ 1200.00',
                                textAlign: TextAlign.end,
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 125,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 150) / 2,
                              child: Text(
                                'Status:',
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 150) / 2,
                              child: Text(
                                'Aguardando pagamento',
                                textAlign: TextAlign.end,
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: MediaQuery.of(context).size.width - 80,
                height: 200,
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
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 125,
                        height: 50,
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
                            'Parcela: 10/06/2023',
                            style: TextStyle(
                                fontFamily: 'upheavtt',
                                color: Colors.blue[900],
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 125,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 150) / 2,
                              child: Text(
                                'Valor:',
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 150) / 2,
                              child: Text(
                                'R\$ 1200.00',
                                textAlign: TextAlign.end,
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 125,
                        height: 50,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 150) / 2,
                              child: Text(
                                'Status:',
                                style: TextStyle(
                                    fontFamily: 'upheavtt',
                                    color: Colors.blue[900],
                                    fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              width:
                                  (MediaQuery.of(context).size.width - 150) / 2,
                              child: Text(
                                'Aguardando pagamento',
                                textAlign: TextAlign.end,
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
