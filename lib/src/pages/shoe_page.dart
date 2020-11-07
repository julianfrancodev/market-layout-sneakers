import 'package:flutter/material.dart';
import 'package:market_layout_shoes/src/widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  CustomAppBar(
                    text: 'For You',
                  ),
                  SizedBox(height: 20,),
                  ShowSizePreview(),
                  ShoeDescription(
                    title: "Nike Air Max 720",
                    description:
                    "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),

                ],
              ),
            ),
          ),
          CarButton(price: 200.0)
        ],
      ),
    );
  }
}
