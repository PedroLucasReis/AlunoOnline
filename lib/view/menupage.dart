// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:myproject/view/login.dart';
import 'package:myproject/view/menuabas/abafinancial.dart';
import 'package:myproject/view/menuabas/abanotes.dart';
import 'package:myproject/view/menuabas/abanotify.dart';
import 'package:myproject/view/menuabas/abaprofile.dart';
import 'package:myproject/view/menuabas/abateacher.dart';
import 'package:myproject/view/menuabas/abatestdate.dart';
import 'package:myproject/widgets/verticalbarscreenview.dart';
import 'package:myproject/view/menuabas/abahome.dart';
import 'package:myproject/view/menuabas/abainfo.dart';
import 'package:scoped_model/scoped_model.dart';

import '../controller/user_controller.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  PageController? _pageController;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 4),
        reverseDuration: const Duration(seconds: 4));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimateGradient(
      controller: _controller,
      primaryColors: const [Colors.white, Colors.blue],
      secondaryColors: const [Colors.yellow, Colors.white],
      primaryBegin: Alignment.topCenter,
      primaryEnd: Alignment.bottomCenter,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ScopedModelDescendant<UserController>(
            builder: (context, child, model) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height - 10,
                      width: MediaQuery.of(context).size.width - 70,
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        controller: _pageController,
                        children: const [
                          AbaHome(),
                          AbaProfile(),
                          AbaNotes(),
                          AbaNotify(),
                          AbaTestDate(),
                          AbaTeacher(),
                          AbaFinancial(),
                          AbaInfo(),
                        ],
                      ),
                    ),
                  ),
                  VerticalBarScreenView(
                    page0: page0,
                    page1: page1,
                    page2: page2,
                    page3: page3,
                    page4: page4,
                    page5: page5,
                    page6: page6,
                    page7: page7,
                    logout: _comeback,
                  ),
                ],
              );
            },
          )),
    );
  }

  void page0() {
    _pageController?.animateToPage(0,
        duration: const Duration(milliseconds: 750), curve: Curves.ease);
  }

  void page1() {
    _pageController?.animateToPage(1,
        duration: const Duration(milliseconds: 750), curve: Curves.ease);
  }

  void page2() {
    _pageController?.animateToPage(2,
        duration: const Duration(milliseconds: 750), curve: Curves.ease);
  }

  void page3() {
    _pageController?.animateToPage(3,
        duration: const Duration(milliseconds: 750), curve: Curves.ease);
  }

  void page4() {
    _pageController?.animateToPage(4,
        duration: const Duration(milliseconds: 750), curve: Curves.ease);
  }

  void page5() {
    _pageController?.animateToPage(5,
        duration: const Duration(milliseconds: 750), curve: Curves.ease);
  }

  void page6() {
    _pageController?.animateToPage(6,
        duration: const Duration(milliseconds: 750), curve: Curves.ease);
  }

  void page7() {
    setState(() {
      _pageController?.animateToPage(7,
          duration: const Duration(milliseconds: 750), curve: Curves.ease);
    });
  }

  void _comeback() {
    var model = ScopedModel.of<UserController>(context);
    model.logout();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()));
  }
}
