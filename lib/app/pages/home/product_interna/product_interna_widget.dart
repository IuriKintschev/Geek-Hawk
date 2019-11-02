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
      bottomNavigationBar: Container(
        width: size.width,
        height: 90,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Color(0xff8844dd),
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              onPressed: () {},
              child: Text(
                'adicionar ao carrinho'.toUpperCase(),
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Ubuntu',
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
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
                SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 40,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding:
                    EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Text(
                  'R\$${price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Orbitron',
                    color: Colors.greenAccent,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Text(
                      textoPri,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Orbitron',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width,
                    child: Text(
                      textoSec,
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Ubuntu',
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
