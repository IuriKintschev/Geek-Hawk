import 'package:flutter/material.dart';

class ProductInternaWidget extends StatelessWidget {
  final String image;
  final String textoPri;
  final String textoSec;
  final double price;
  final Color cor;

  ProductInternaWidget(
      {this.image, this.textoPri, this.textoSec, this.price, this.cor});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: SafeArea(
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    color: cor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(250),
                    )),
              ),
            ),
            SafeArea(
              child: Hero(
                tag: image,
                child: Container(
                  padding: EdgeInsets.only(top: 20),
                  width: size.width,
                  height: 350,
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
