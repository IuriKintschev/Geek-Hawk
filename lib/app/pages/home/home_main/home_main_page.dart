import 'package:flutter/material.dart';
import 'package:geek_hawk/app/pages/components/app_bar/app_bar_widget.dart';
import 'package:geek_hawk/app/pages/home/components/card_itens_home/card_itens_home_widget.dart';
import 'package:geek_hawk/app/pages/home/components/card_principal/card_principal_widget.dart';
import 'package:geek_hawk/app/pages/home/components/content_category/content_category_widget.dart';
import 'package:geek_hawk/model/produto_model.dart';

class HomeMainPage extends StatefulWidget {
  @override
  _HomeMainPageState createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  List<String> images = []; //! retirar depois

  @override
  void initState() {
    super.initState();
    //! retirar depois
    for (int i = 1; i <= 6; ++i) {
      images.add('assets/dataI/g-$i.png');
    }
    //! retirar depois
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              AppBarWidget(), // AppBar geral
              CardPrincipalWidget(
                image: produto[0].imagens[0],
                cor: Color(int.parse(produto[0].cor)),
                price: produto[0].price,
                textoPri: produto[0].nome,
                textoSec: produto[0].descricao,
              ), // card princifal
              ContentCategoryWidget(
                images: images, //! retirar depois
                imageH: 120.0,
                imageW: 60.0,
                title: "Categorias",
              ), // careoucel de categoria
              Row(
                children: <Widget>[
                  Expanded(
                    child: CardItensHomeWidget(
                      image: produto[1].imagens[1],
                      cor: Color(int.parse(produto[1].cor)),
                      price: produto[1].price,
                      textoPri: produto[1].nome,
                      textoSec: produto[1].descricao,
                    ),
                  ),
                  Expanded(
                    child: CardItensHomeWidget(
                      image: produto[1].imagens[0],
                      cor: Color(int.parse(produto[1].cor)),
                      price: produto[1].price,
                      textoPri: produto[1].nome,
                      textoSec: produto[1].descricao,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CardItensHomeWidget(
                      image: produto[3].imagens[0],
                      cor: Color(int.parse(produto[3].cor)),
                      price: produto[3].price,
                      textoPri: produto[3].nome,
                      textoSec: produto[3].descricao,
                    ),
                  ),
                  Expanded(
                    child: CardItensHomeWidget(
                      image: produto[2].imagens[0],
                      cor: Color(int.parse(produto[2].cor)),
                      price: produto[2].price,
                      textoPri: produto[2].nome,
                      textoSec: produto[2].descricao,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CardItensHomeWidget(
                      image: produto[4].imagens[0],
                      cor: Color(int.parse(produto[4].cor)),
                      price: produto[4].price,
                      textoPri: produto[4].nome,
                      textoSec: produto[4].descricao,
                    ),
                  ),
                  Expanded(
                    child: CardItensHomeWidget(
                      image: produto[5].imagens[0],
                      cor: Color(int.parse(produto[5].cor)),
                      price: produto[5].price,
                      textoPri: produto[5].nome,
                      textoSec: produto[5].descricao,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CardItensHomeWidget(
                      image: produto[6].imagens[0],
                      cor: Color(int.parse(produto[6].cor)),
                      price: produto[6].price,
                      textoPri: produto[6].nome,
                      textoSec: produto[6].descricao,
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
