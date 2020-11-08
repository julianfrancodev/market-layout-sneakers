import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color color;

  OrangeButton(
      {@required this.text,
      this.height = 50,
      this.width = 150,
      this.color = Colors.orange});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(100)),
      child: Text(
        "${this.text}",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
