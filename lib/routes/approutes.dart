

import 'package:example/domain/cubit/cubit/theme_cubit.dart';
import 'package:example/presentation/homeview.dart';
import 'package:flutter/material.dart';

class AppRouter {
  late ThemeCubit themeCubit;
  AppRouter(){
    themeCubit = ThemeCubit();
  }
  Route? generateRoute(RouteSettings settings){

    switch(settings.name){
      case "/home" : {
        return MaterialPageRoute(builder: (context)=> const HomeView());
      }
    }

  }
}