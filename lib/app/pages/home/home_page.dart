import 'package:expandable_card/expandable_card.dart';
import 'package:flutter/material.dart';
import 'package:geek_hawk/app/pages/home/components/circular_list_cart/circular_list_cart_widget.dart';
import 'package:geek_hawk/app/pages/home/home_main/home_main_page.dart';
import 'package:geek_hawk/model/produto_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ExpandableCardPage(
        page: Center(
          child: HomeMainPage(),
        ),
        expandableCard: ExpandableCard(
          hasHandle: false,
          hasRoundedCorners: true,
          maxHeight: 560,
          minHeight: 90,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 0,
          ),
          backgroundColor: Theme.of(context).primaryColorDark,
          children: listWidCard(), //lista de widgets do card expansivo
        ),
      ),
    );
  }

  //Lista de widgets do card expansivo
  List<Widget> listWidCard() {
    return [
      Icon(
        Icons.keyboard_arrow_up,
        size: 30,
        color: Theme.of(context).primaryColor,
      ),
      Row(
        children: <Widget>[
          Container(
            height: 30,
            width: 35,
            child: Image.asset(
              "assets/images/shopping-cart.png",
            ),
          ),
          Expanded(
            child: CircularListCartWidget(),
          ),
        ],
      ),
      Expanded(
        child: ListView(
          children: <Widget>[
            cardCart(produto[6].imagens[0], produto[6].nome, produto[6].price,
                produto[6].cor),
            cardCart(produto[1].imagens[0], produto[1].nome, produto[1].price,
                produto[1].cor),
            cardCart(produto[4].imagens[0], produto[4].nome, produto[4].price,
                produto[4].cor),
          ],
        ),
      ),
      Container(
        width: 300,
        height: 40,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          onPressed: () {},
          child: Text(
            'FINALIZAR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 60,
      ),
    ];
  }

  Widget cardCart(String image, String nome, double price, String cor) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(8),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColorDark,
            border: Border.all(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(60),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          '$nome',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                            fontFamily: 'Ubuntu',
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "R\$${price.toStringAsFixed(2)}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Theme.of(context).primaryColor,
                            fontFamily: 'Orbitron',
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.remove,
                        ),
                        color: Theme.of(context).primaryColor,
                        onPressed: () {}),
                    Text(
                      '1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'Orbitron',
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.add,
                      ),
                      color: Theme.of(context).primaryColor,
                      onPressed: () {},
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove_shopping_cart,
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
