import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final label, size, color, bold;
  const MyText({
    this.bold,
    this.color,
    this.label,
    this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          fontSize: size,
          fontWeight: bold ?? FontWeight.normal,
          color: color ?? Colors.black),
    );
  }
}
