import 'package:first_web/header/header.dart';
import 'package:first_web/header/navigation.dart';

import 'package:first_web/textWidgets.dart';
import 'package:flutter/material.dart';

import 'cards.dart';
import 'footer/footer1.dart';

import 'footer/footer2.dart';
import 'main_body/main_hero_section.dart';
import 'main_body/main_section2.dart';
import 'main_body/main_section3.dart';
import 'main_body/main_section4.dart';

void main() {
  runApp(MaterialApp(
    title: "First",
    home: HomeView(),
  ));
}

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          foregroundColor: Colors.blueAccent,
        ),
        drawer: MediaQuery.of(context).size.width <= 640
            ? Drawer(child: NavbarDrawerSmall())
            : null,
        body: ListView(children: [
          HeaderRenderer(),
          HeroSection(),
          MainSection2(),
          MainSection3Renderer(),
          MainSection4Renderer(),
          Footer1Renderer(),
          Footer2()
        ]));
  }
}
