import 'package:flutter/material.dart';

import 'textWidgets.dart';

class MyCard extends StatefulWidget {
  MyCard({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  var onHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: MyText(
              label: "Heading",
              size: 30,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: MyText(
              label:
                  "lorem lorem lorem lorem lorem Another cool thing about using RichText widget is that, the TextSpan the object comes with their own TapGestureRecognizer() which helps to implement onTap() action on specific parts of the text as needed. In our example, since thelorem lorem lorem lorem lorem",
              size: 12,
            ),
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  color: onHover ? Colors.white : Colors.greenAccent,
                  border: Border.all(color: Colors.greenAccent)),
              child: TextButton(
                child: MyText(
                  label: "Learn",
                  color: onHover ? Colors.greenAccent : Colors.white,
                ),
                onHover: (bool) {
                  setState(() {
                    onHover = bool;
                  });
                },
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

// the cards in the lower section of the main

class ImageCard extends StatefulWidget {
  final path;
  ImageCard({this.path});
  @override
  State<ImageCard> createState() => _ImageCardState();
}

class _ImageCardState extends State<ImageCard> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Container(
            height: 140,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.path))),
          ),
          Container(
            width: 250,
            child: Column(children: [
              const MyText(
                label: "Technical Content Writter",
                size: 16,
              ),
              const MyText(
                bold: FontWeight.normal,
                size: 12,
                label:
                    "lorem lorem lorem lorem lorem orem lorem lorem lorem lorem orem lorem lorem lorem lorem orem lorem lorem lorem lorem",
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      color: onHover ? Colors.white : Colors.greenAccent,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      "Learn",
                      style: TextStyle(
                          fontSize: 16,
                          color: onHover ? Colors.greenAccent : Colors.white),
                    )),
                onHover: (value) {
                  setState(() {
                    onHover = value;
                  });
                },
              )
            ]),
          ),
        ],
      ),
    );
  }
}
