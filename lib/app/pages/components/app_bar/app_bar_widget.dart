import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage('assets/images/hawk.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                ),
                child: Text(
                  'G-HAWK',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Orbitron',
                    letterSpacing: 2,
                  ),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              IconButton(
                onPressed: () => print("Pesquisando"),
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 35,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage(
                      "assets/dataI/iuri.jpeg",
                    ),
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
