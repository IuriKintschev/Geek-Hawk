import 'package:geek_hawk/app/pages/home/product_interna/product_interna_bloc.dart';
import 'package:geek_hawk/app/pages/home/home_main/home_main_bloc.dart';
import 'package:geek_hawk/app/pages/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:geek_hawk/app/pages/home/home_page.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => ProductInternaBloc()), // inter na de produtos
        Bloc((i) => HomeMainBloc()), // Bloc pagina maain
        Bloc((i) => HomeBloc()), // Bloc home geral
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
