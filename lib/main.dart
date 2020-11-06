import 'package:flutter/material.dart';
import 'package:market_layout_shoes/src/pages/shoe_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes Market',
      home: ShoePage(),
    )
  );
}