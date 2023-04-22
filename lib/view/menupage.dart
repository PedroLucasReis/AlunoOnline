import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:animate_gradient/animate_gradient.dart';
import 'package:myproject/view/menuabas/abanotes.dart';
import 'package:myproject/view/menuabas/abanotify.dart';
import 'package:myproject/view/menuabas/abaprofile.dart';
import 'package:myproject/view/menuabas/abatestdate.dart';
import 'package:myproject/widgets/verticalbarscreenview.dart';
import 'package:myproject/view/menuabas/abahome.dart';
import 'package:myproject/view/menuabas/abainfo.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  PageController? _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimateGradient(
      primaryColors: const [Colors.white, Colors.blue],
      secondaryColors: const [Colors.yellow, Colors.white],
      primaryBegin: Alignment.topCenter,
      primaryEnd: Alignment.bottomCenter,
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
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
              ),
            ],
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
    setState(() {});
  }

  void page6() {
    setState(() {});
  }
}
