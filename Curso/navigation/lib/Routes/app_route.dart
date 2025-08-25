import 'package:flutter/material.dart';
import 'package:navigation/Routes/Routs.dart';
import 'package:navigation/Screens/Screen_1.dart';
import 'package:navigation/Screens/Screen_2.dart';

class AppRoute {
  static Route onGenerateRoute (RouteSettings settings) {
      switch (settings.name){
        case Routs.Screen1:
          return MaterialPageRoute(builder: (_) => const Screen1());
        case Routs.Screen2:
          return MaterialPageRoute(builder: (_) => const Screen2());
        default:
          return MaterialPageRoute(
            builder: (_) => Scaffold(
              body: Center(
                child: Text('No raute defined${settings.name}'),
              )
            )
          );
      }
  }
}