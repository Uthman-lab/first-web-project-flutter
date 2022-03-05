import 'package:flutter/material.dart';

import '../textWidgets.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          height: 400,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage("images/slider.jpg"))),
        ),
        Positioned(
          top: 300,
          left: 900,
          child: Container(
            child: Column(
              children: [
                MyText(
                  color: Colors.black,
                  label: "A Basic Web Design Course By",
                  size: 24,
                ),
                MyText(
                  label: 'GeeksforGeeks',
                  size: 24,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
