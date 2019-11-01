import 'package:flutter/material.dart';
import 'package:geek_hawk/app/pages/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Geek Hawk',
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        primaryColorDark: Color(0xff404040),
      ),
      home: HomeModule(),
    );
  }
}
