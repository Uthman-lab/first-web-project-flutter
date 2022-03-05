import 'package:first_web/textWidgets.dart';
import 'package:flutter/material.dart';

class Footer1LargeScreen extends StatelessWidget {
  const Footer1LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.symmetric(vertical: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [IconCard(), IconCard(), IconCard()],
      ),
    );
  }
}

class Footer1MediumScreen extends StatelessWidget {
  const Footer1MediumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueGrey,
        padding: EdgeInsets.symmetric(vertical: 20),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          childAspectRatio: 5 / 1,
          children: [IconCard(), IconCard(), IconCard()],
        ));
  }
}

class Footer1SmallScreen extends StatelessWidget {
  const Footer1SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [IconCard(), IconCard(), IconCard()],
      ),
    );
  }
}

class Footer1Renderer extends StatelessWidget {
  const Footer1Renderer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 640 &&
        MediaQuery.of(context).size.width <= 1040) {
      return Footer1MediumScreen();
    } else if (MediaQuery.of(context).size.width <= 640) {
      return Footer1SmallScreen();
    } else
      return Footer1LargeScreen();
    ;
  }
}

class IconCard extends StatelessWidget {
  const IconCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        const Icon(Icons.location_city),
        MyText(
          label: "Lorem lorem lorem Posem",
        )
      ],
    ));
  }
}
