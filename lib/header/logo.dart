import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: const [
          Text(
            "GeeksforGeeks",
            style: TextStyle(fontSize: 30, color: Colors.greenAccent),
          ),
          Text("A Computer Science Portal For Students")
        ],
      ),
    );
  }
}
