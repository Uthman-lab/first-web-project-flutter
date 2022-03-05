import 'package:flutter/material.dart';

import '../cards.dart';

class MainSection4Renderer extends StatelessWidget {
  const MainSection4Renderer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width >= 640 &&
        MediaQuery.of(context).size.width <= 1240) {
      return GridView(
        shrinkWrap: true,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          ImageCard(
            path: "images/developer.jpg",
          ),
          ImageCard(
            path: "images/slider.jpg",
          ),
          ImageCard(
            path: "images/teacher.jpg",
          ),
          ImageCard(
            path: "images/writer.jpg",
          )
        ],
      );
    } else if (MediaQuery.of(context).size.width <= 640) {
      return MainSection4Small();
    } else
      return MainSection4LargeAndMedium();
  }
}

class MainSection4LargeAndMedium extends StatelessWidget {
  const MainSection4LargeAndMedium({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageCard(
            path: "images/developer.jpg",
          ),
          ImageCard(
            path: "images/slider.jpg",
          ),
          ImageCard(
            path: "images/teacher.jpg",
          ),
          ImageCard(
            path: "images/writer.jpg",
          )
        ],
      ),
    );
  }
}

class MainSection4Small extends StatelessWidget {
  const MainSection4Small({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ImageCard(
          path: "images/developer.jpg",
        ),
        ImageCard(
          path: "images/slider.jpg",
        ),
        ImageCard(
          path: "images/teacher.jpg",
        ),
        ImageCard(
          path: "images/writer.jpg",
        )
      ],
    );
  }
}
