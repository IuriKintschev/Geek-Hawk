import 'package:geek_hawk/app/pages/components/app_bar/app_bar_bloc.dart';
import 'package:geek_hawk/app/app_bloc.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:geek_hawk/app/app_widget.dart';

class AppModule extends ModuleWidget {
  @override
  List<Bloc> get blocs => [
        Bloc((i) => AppBarBloc()), //app bar
        Bloc((i) => AppBloc()), //Bloc Geeral
      ];

  @override
  List<Dependency> get dependencies => [];

  @override
  Widget get view => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
