import 'package:geek_hawk/app/pages/home/components/circular_list_cart/circular_list_cart_bloc.dart';
import 'package:geek_hawk/app/pages/home/components/card_itens_home/card_itens_home_bloc.dart';
import 'package:geek_hawk/app/pages/home/components/content_category/content_category_bloc.dart';
import 'package:geek_hawk/app/pages/home/components/card_principal/card_principal_bloc.dart';
import 'package:geek_hawk/app/pages/home/home_main/home_main_bloc.dart';
import 'package:geek_hawk/app/pages/home/home_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:geek_hawk/app/pages/home/home_page.dart';

class HomeModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => CircularListCartBloc()), // circular cart
        Bloc((i) => CardItensHomeBloc()), // card de grid bloc
        Bloc((i) => ContentCategoryBloc()), // carrocel de categoria bloc
        Bloc((i) => CardPrincipalBloc()), // card principal
        Bloc((i) => HomeMainBloc()), // Bloc pagina maain
        Bloc((i) => HomeBloc()), // Bloc home geral
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => HomePage();

  static Inject get to => Inject<HomeModule>.of();
}
