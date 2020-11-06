import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowSizePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
          color: Color(0xffffcf53),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Column(
          children: [
            _ShowShadow(),
          ],
        ),
      ),
    );
  }
}

class _ShowShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(bottom: 20,right: 0,child: _ContainerShadow()),
          Image(image: AssetImage('assets/images/amarillo.png'),)
        ],
      ),
    );
  }
}

class _ContainerShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(color: Color(0xffeaa14e), blurRadius: 40),

          ]
        ),
      ),
    );
  }
}


