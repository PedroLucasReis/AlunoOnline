import 'package:flutter/material.dart';

class VerticalBarScreenView extends StatefulWidget {
  const VerticalBarScreenView({super.key});

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
              onPressed: () {},
              icon: const Icon(Icons.home)),
          IconButton(
              tooltip: 'Perfil',
              onPressed: () {},
              icon: const Icon(Icons.person_rounded)),
          IconButton(
              tooltip: 'Consultas',
              onPressed: () {},
              icon: const Icon(Icons.search_rounded)),
          IconButton(
              tooltip: 'Ferramentas',
              onPressed: () {},
              icon: const Icon(Icons.engineering_rounded)),
          IconButton(
              tooltip: 'Requerimentos',
              onPressed: () {},
              icon: const Icon(Icons.assistant_rounded)),
          IconButton(
              tooltip: 'Financeiro',
              onPressed: () {},
              icon: const Icon(Icons.attach_money_rounded)),
          IconButton(
              tooltip: 'Matrícula',
              onPressed: () {},
              icon: const Icon(Icons.school_rounded)),
          IconButton(
              tooltip: 'Informações',
              onPressed: () {},
              icon: const Icon(Icons.info_rounded))
        ],
      ),
    );
  }
}
