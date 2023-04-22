import 'dart:async';

import 'package:flutter/material.dart';

class AbaNotify extends StatefulWidget {
  const AbaNotify({super.key});

  @override
  State<AbaNotify> createState() => _AbaNotifyState();
}

class _AbaNotifyState extends State<AbaNotify> {
  final _controller = ScrollController();
  final _listKey = GlobalKey();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      final position = _controller.position;
      final maxScrollExtent = position.maxScrollExtent;
      final currentScroll = position.pixels;

      if (currentScroll >= maxScrollExtent) {
        _controller.animateTo(
          0.0,
          duration: const Duration(seconds: 3),
          curve: Curves.easeOut,
        );
      } else {
        _controller.animateTo(
          maxScrollExtent,
          duration: const Duration(seconds: 3),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
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
                  'Avisos',
                  style: TextStyle(
                      fontFamily: 'upheavtt',
                      color: Colors.blue[900],
                      fontSize: 16),
                ),
              ),
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
                child: ListView(
                  key: _listKey,
                  controller: _controller,
                  children: [
                    ListTile(
                      title: const Text(
                        'Oportunidade de estagio',
                      ),
                      subtitle: const Text('Unaerp - Lecograf Unaerp'),
                      trailing: const Text('20/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        '8° semana de engenharia',
                      ),
                      subtitle: const Text('Inscreva-se'),
                      trailing: const Text('19/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'Dica de segurança da CIPA',
                      ),
                      subtitle: const Text(
                          'Não utilize o celular nas escadas, use o corrimão'),
                      trailing: const Text('18/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'Evento Aquathlon 2023',
                      ),
                      subtitle: const Text(
                          'São 3 categorias e kit personalizado da prova'),
                      trailing: const Text('17/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'JOGOS',
                      ),
                      subtitle: const Text(
                          'jogos na semana de engenharia e tecnologia'),
                      trailing: const Text('17/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'Monitoria',
                      ),
                      subtitle: const Text('Vagas abertas!'),
                      trailing: const Text('12/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'O poder da transformação',
                      ),
                      subtitle: const Text(
                          'Palestra com ex-ginasta Lais Souza (palestra gratuita)'),
                      trailing: const Text('11/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'Apoio aos estudantes',
                      ),
                      subtitle: const Text(
                          'Unaerp retoma realização de rodas de conversa'),
                      trailing: const Text('04/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'Edital pibic 2023',
                      ),
                      subtitle: const Text('Resultado para bolsas voluntárias'),
                      trailing: const Text('31/03/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'Mostra de poemas',
                      ),
                      subtitle: const Text('Inscrições até o dia 15 de maio'),
                      trailing: const Text('29/03/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'Grupo vocal Universitário',
                      ),
                      subtitle: const Text(
                          'inscreva-se e agende aulas de orientação vocal'),
                      trailing: const Text('21/04/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        'Atendimento médico',
                      ),
                      subtitle: const Text(
                          'Casos de urgência e emergência ocorridos no campus'),
                      trailing: const Text('23/02/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
                    ),
                    ListTile(
                      title: const Text(
                        '15° Desafio - Domótica',
                      ),
                      subtitle: const Text('Engenharia da computação'),
                      trailing: const Text('16/02/2023'),
                      titleTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.blue[900],
                          fontSize: 16),
                      subtitleTextStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 12),
                      leadingAndTrailingTextStyle: TextStyle(
                          fontFamily: 'upheavtt',
                          color: Colors.yellow[800],
                          fontSize: 16),
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
