import 'package:flutter/material.dart';

class VerticalBarScreenView extends StatefulWidget {
  final VoidCallback page0;
  final VoidCallback page1;
  final VoidCallback page2;
  final VoidCallback page3;
  final VoidCallback page4;
  final VoidCallback logout;

  const VerticalBarScreenView(
      {super.key,
      required this.page0,
      required this.page1,
      required this.page2,
      required this.page3,
      required this.page4,
      required this.logout});

  @override
  State<VerticalBarScreenView> createState() => _VerticalBarScreenViewState();
}

class _VerticalBarScreenViewState extends State<VerticalBarScreenView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(left: BorderSide(color: Colors.blue))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Hero(
              tag: 'logo',
              child: Image.asset(
                'images/logo.png',
                scale: 0.5,
              ),
            ),
          ),
          IconButton(
              tooltip: 'Início',
              onPressed: () {
                widget.page0();
              },
              icon: const Icon(Icons.home,
                  color: Color.fromARGB(255, 13, 71, 161))),
          IconButton(
              tooltip: 'Perfil',
              onPressed: () {
                widget.page1();
              },
              icon: const Icon(Icons.person_rounded,
                  color: Color.fromARGB(255, 13, 71, 161))),
          IconButton(
              tooltip: 'Boletim',
              onPressed: () {
                widget.page2();
              },
              icon: const Icon(
                Icons.local_play_rounded,
                color: Color.fromARGB(255, 13, 71, 161),
              )),
          IconButton(
              tooltip: 'Avisos',
              onPressed: () {
                widget.page3();
              },
              icon: const Icon(Icons.notifications_rounded,
                  color: Color.fromARGB(255, 13, 71, 161))),
          IconButton(
              tooltip: 'Informações',
              onPressed: () {
                widget.page4();
              },
              icon: const Icon(Icons.info_rounded,
                  color: Color.fromARGB(255, 13, 71, 161))),
          IconButton(
              tooltip: 'Sair',
              onPressed: () {
                widget.logout();
              },
              icon: const Icon(Icons.logout_rounded,
                  color: Color.fromARGB(255, 13, 71, 161)))
        ],
      ),
    );
  }
}
