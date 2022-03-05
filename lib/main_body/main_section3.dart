import 'package:first_web/cards.dart';
import 'package:flutter/material.dart';

class MainSection3LargeAndMediumScreen extends StatelessWidget {
  const MainSection3LargeAndMediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [MyCard(), MyCard(), MyCard()],
      ),
    );
  }
}

class MainSection3SmallScreen extends StatelessWidget {
  const MainSection3SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [MyCard(), MyCard(), MyCard()],
      ),
    );
  }
}

class MainSection3Renderer extends StatelessWidget {
  const MainSection3Renderer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 640 &&
        MediaQuery.of(context).size.width <= 1008) {
      return GridView(
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [MyCard(), MyCard(), MyCard()],
      );
    } else if (MediaQuery.of(context).size.width <= 640) {
      return MainSection3SmallScreen();
    }
    return MainSection3LargeAndMediumScreen();
  }
}
