import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../textWidgets.dart';

class MainSection2 extends StatelessWidget {
  const MainSection2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Container(
          margin: EdgeInsets.only(top: 50),
          height: 150,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(label: "Welcome To Our Site", size: 25),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: RichText(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text:
                          "This is a sample website,  a html and css template designed by the ",
                      children: [
                        TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            text: "GeeksforGeeks",
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.pinkAccent)),
                        const TextSpan(
                            text:
                                "The photos in this template are designed by our graphics design team. This templates are designed to explain the basics of html and css in our first web design course")
                      ]),
                ),
              ),
            ],
          )),
    ]));
  }
}
