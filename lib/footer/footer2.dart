import 'package:flutter/material.dart';

class Footer2 extends StatelessWidget {
  const Footer2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.copyright),
              Text(" All rights reserved | Geeks For Geeks"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook),
              Icon(Icons.facebook_outlined),
              Icon(Icons.facebook)
            ],
          )
        ],
      ),
    );
  }
}

class Footer2Renderer extends StatelessWidget {
  const Footer2Renderer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Footer2();
  }
}
