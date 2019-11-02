import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geek_hawk/app/pages/home/product_interna/product_interna_widget.dart';

class CardPrincipalWidget extends StatelessWidget {
  final String image;
  final String textoPri;
  final String textoSec;
  final double price;
  final Color cor;

  CardPrincipalWidget(
      {this.image, this.textoPri, this.textoSec, this.price, this.cor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            CupertinoPageRoute(
              builder: (context) => ProductInternaWidget(
                image: image,
                cor: cor,
                price: price,
                textoPri: textoPri,
                textoSec: textoSec,
              ),
            ),
          );
        },
        child: Container(
          height: 160,
          child: Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: <Widget>[
              Container(
                height: 130,
                padding: const EdgeInsets.only(
                  left: 8,
                  top: 8,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorDark,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 180,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            textoPri,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              letterSpacing: 2,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Orbitron",
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 160,
                            child: Text(
                              textoSec,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white70,
                                fontFamily: "Ubuntu",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "R\$${price.toStringAsFixed(2)}",
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 2,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Orbitron",
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Hero(
                  tag: image,
                  child: Container(
                    width: 160,
                    height: 160,
                    child: Image(
                      image: AssetImage(image),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
