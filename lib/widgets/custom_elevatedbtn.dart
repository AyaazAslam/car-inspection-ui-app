import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  double height;
  double width;
  var color;
  String buttonName;
  var hintstyle;
  var onpressed;
  CustomElevatedButton(
      {required this.buttonName,
      required this.onpressed,
      required this.height,
      this.color,
      this.hintstyle,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color, fixedSize: Size(width, height)),
      onPressed: onpressed,
      child: Text(buttonName),
    );
  }
}
