import 'package:flutter/material.dart';
import 'package:market_layout_shoes/src/models/shoe_model.dart';
import 'package:market_layout_shoes/src/pages/shoe_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ShoeModel() )],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes Market',
      home: ShoePage(),
    ),
  ));
}
