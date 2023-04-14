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
          Tooltip(
              message: 'Início',
              verticalOffset: -10,
              margin: const EdgeInsets.only(right: 50),
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.home))),
          Tooltip(
              message: 'Perfil',
              verticalOffset: -10,
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.person_rounded))),
          Tooltip(
              message: 'Consultas',
              verticalOffset: -10,
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.search_rounded))),
          Tooltip(
            message: 'Ferramentas',
            verticalOffset: -10,
            margin: const EdgeInsets.only(right: 50),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.engineering_rounded)),
          ),
          Tooltip(
            message: 'Requerimentos',
            verticalOffset: -10,
            margin: const EdgeInsets.only(right: 50),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.assistant_rounded)),
          ),
          Tooltip(
            message: 'Financeiro',
            verticalOffset: -10,
            margin: const EdgeInsets.only(right: 50),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.attach_money_rounded)),
          ),
          Tooltip(
              message: 'Matrícula',
              verticalOffset: -10,
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.school_rounded))),
          Tooltip(
              message: 'Informações',
              verticalOffset: -10,
              margin: const EdgeInsets.only(right: 50),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.info_rounded)))
        ],
      ),
    );
  }
}
