import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title;
  final String description;

  ShoeDescription({@required this.title, @required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text(
            this.title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
          ),
          SizedBox(height: 20,),
          Text(
            this.description,
            style: TextStyle(color: Colors.black54, height: 1.6),
          ),
        ],
      ),
    );
  }
}
