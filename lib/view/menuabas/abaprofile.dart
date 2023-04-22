import 'package:flutter/material.dart';
import 'package:myproject/view/menuabas/abaprofileview/abaprofiledata.dart';
import 'package:myproject/view/menuabas/abaprofileview/abaprofilepass.dart';

class AbaProfile extends StatefulWidget {
  const AbaProfile({super.key});

  @override
  State<AbaProfile> createState() => _AbaProfileState();
}

class _AbaProfileState extends State<AbaProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
          title: Container(
              width: MediaQuery.of(context).size.width - 75,
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
                'Perfil:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'upheavtt',
                    color: Colors.blue[900],
                    fontSize: 16),
              )),
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Container(
                  width: MediaQuery.of(context).size.width - 80,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    boxShadow: const [
                      BoxShadow(color: Colors.blue, offset: Offset(5, 5))
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TabBar(
                      indicator: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      labelColor: Colors.white,
                      labelStyle:
                          const TextStyle(fontFamily: 'upheavtt', fontSize: 16),
                      unselectedLabelColor: Colors.blue[900],
                      tabs: const [
                        Tab(
                          text: 'Editar Perfil',
                        ),
                        Tab(
                          text: 'Editar senha',
                        )
                      ]))),
        ),
        body: TabBarView(children: [const AbaProfileData(), AbaProfilePass()]),
      ),
    );
  }
}
