import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShowSizePreview extends StatelessWidget {
  final bool fullScreen;

  ShowSizePreview({this.fullScreen = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: (fullScreen) ? 5 : 30, vertical: (fullScreen) ? 5 : 0),
      child: Container(
        width: double.infinity,
        height: (this.fullScreen) ? 410 : 430,
        decoration: BoxDecoration(
            color: Color(0xffffcf53),
            borderRadius: (!this.fullScreen)
                ? BorderRadius.circular(50)
                : BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
        child: Column(
          children: [
            _ShowShadow(),
            if (!this.fullScreen) _ShowSize(),
          ],
        ),
      ),
    );
  }
}

class _ShowSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _BoxSizeShoe(7),
          _BoxSizeShoe(7.5),
          _BoxSizeShoe(8),
          _BoxSizeShoe(8.5),
          _BoxSizeShoe(9),
          _BoxSizeShoe(9.5),
        ],
      ),
    );
  }
}

class _BoxSizeShoe extends StatelessWidget {
  final double size;

  _BoxSizeShoe(this.size);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(this.size);
      },
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: (this.size == 9) ? Color(0xfff1a23a) : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (this.size == 9)
                BoxShadow(
                    color: Color(0xfff1a23a),
                    blurRadius: 10,
                    offset: Offset(0, 5))
            ]),
        child: Text(
          "${this.size.toString().replaceAll('.0', '')}",
          style: TextStyle(
              color: (this.size == 9) ? Colors.white : Color(0xfff1a23a),
              fontSize: 16,
              fontWeight: FontWeight.bold),
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
          Positioned(bottom: 20, right: 0, child: _ContainerShadow()),
          Image(
            image: AssetImage('assets/images/amarillo.png'),
          )
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
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(100), boxShadow: [
          BoxShadow(color: Color(0xffeaa14e), blurRadius: 40),
        ]),
      ),
    );
  }
}
