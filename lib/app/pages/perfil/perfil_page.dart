import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  final image;

  PerfilPage({this.image});

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: appBarSliver(),
    );
  }

  Widget appBarSliver() {
    return NestedScrollView(
      headerSliverBuilder: (context, boxScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 400.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: "assets/dataI/iuri.jpeg",
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ];
      },
      body: Center(),
    );
  }
}
