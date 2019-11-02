import 'package:flutter/material.dart';

class CircularListCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                "Carrinho",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Orbitron',
                  letterSpacing: 2,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Expanded(
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: <Widget>[
          //       circularItem(context, 'assets/dataI/charizard.png'),
          //       circularItem(context, 'assets/dataI/h1z11.png'),
          //       circularItem(context, 'assets/dataI/one.png'),
          //     ],
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(bottom: 3),
            width: 40,
            height: 40,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              child: Text(
                "3",
                style: TextStyle(
                  fontFamily: 'Orbitron',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget circularItem(BuildContext context, String image) {
  //   return Container(
  //     margin: EdgeInsets.only(left: 5),
  //     height: 40,
  //     width: 40,
  //     child: CircleAvatar(
  //       backgroundColor: Theme.of(context).primaryColorDark,
  //       child: ClipOval(
  //         child: Image.asset(image),
  //       ),
  //     ),
  //   );
  // }
}
