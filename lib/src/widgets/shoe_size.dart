import 'package:flutter/material.dart';

class ShowSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(50)
        ),
      ),
    );
  }
}
