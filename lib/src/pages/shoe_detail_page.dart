import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:market_layout_shoes/src/helpers/helpers.dart';
import 'package:market_layout_shoes/src/models/shoe_model.dart';
import 'package:market_layout_shoes/src/widgets/custom_widgets.dart';
import 'package:provider/provider.dart';

class ShoeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    changeStatusLight();

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(tag: 'zapato-1', child: ShowSizePreview(fullScreen: true)),
              Positioned(
                top: 60,
                left: 20,
                child: FloatingActionButton(
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                    size: 55,
                  ),
                  onPressed: () {
                    changeStatusDark();
                    Navigator.pop(context);
                  },
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                ),
              )
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ShoeDescription(
                    title: "Nike Air Max 720",
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so.",
                  ),
                  _PriceBuyNow(),
                  _ColorsAndMore(),
                  _BottomButtons(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ShadowButton(Icon(
            Icons.star_border,
            color: Colors.red,
            size: 25,
          )),
          _ShadowButton(Icon(
            Icons.add_shopping_cart,
            color: Colors.grey.withOpacity(0.4),
            size: 25,
          )),
          _ShadowButton(Icon(
            Icons.settings,
            color: Colors.grey.withOpacity(0.4),
            size: 25,
          )),
        ],
      ),
    );
  }
}

class _ShadowButton extends StatelessWidget {
  final Icon icon;

  _ShadowButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12, spreadRadius: -5, offset: Offset(0, 10))
          ]),
      child: this.icon,
    );
  }
}

class _PriceBuyNow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Text(
              "\$180.0",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Spacer(),
            Bounce(
              delay: Duration(milliseconds: 1000),
              from: 8,
              child: OrangeButton(
                text: 'Buy Now',
                width: 120,
                height: 40,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ColorsAndMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  child: _ColoredButton(
                      Color(0xff364d56), 4, 'assets/images/negro.png'),
                  left: 90,
                ),
                Positioned(
                  child: _ColoredButton(
                      Color(0xff2099f1), 3, 'assets/images/azul.png'),
                  left: 60,
                ),
                Positioned(
                  child: _ColoredButton(
                      Color(0xffffad29), 2, 'assets/images/amarillo.png'),
                  left: 30,
                ),
                _ColoredButton(Color(0xffc6d642), 1, 'assets/images/verde.png'),
              ],
            ),
          ),
          OrangeButton(
            text: "More related items",
            height: 30,
            width: 170,
            color: Color(0xffffc675),
          )
        ],
      ),
    );
  }
}

class _ColoredButton extends StatelessWidget {
  final Color color;
  final int index;
  final String imageUrl;

  _ColoredButton(this.color, this.index, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final showModel = Provider.of<ShoeModel>(context, listen: false);
          showModel.assetImage = this.imageUrl;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(color: this.color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
