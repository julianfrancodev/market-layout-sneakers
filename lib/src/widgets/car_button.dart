import 'package:flutter/material.dart';
import 'package:market_layout_shoes/src/widgets/custom_widgets.dart';

class CarButton extends StatelessWidget {

  final double price;

  CarButton({@required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.10),
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          children: [
            SizedBox(width: 20,),
            Text("\$${this.price}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            Spacer(),
            OrangeButton(text: "Add to cart"),
            SizedBox(width: 20,)
          ],
        ),
      ),
    );
  }
}
