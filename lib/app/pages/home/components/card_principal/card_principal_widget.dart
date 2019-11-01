import 'package:flutter/material.dart';
import 'package:geek_hawk/model/produto_model.dart';

class CardPrincipalWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
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
                          produto[0].nome, //! importe model
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
                            produto[0].descricao, //! importe model
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
                    "R\$${produto[0].price.toStringAsFixed(2)}", //! importe model
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
              child: Container(
                width: 160,
                height: 160,
                child: Image(
                  image: AssetImage(produto[0].imagens[0]), //! importe model
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
