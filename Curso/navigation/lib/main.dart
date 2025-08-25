import 'package:flutter/material.dart';
import 'package:navigation/Routes/app_route.dart';
//import 'package:navigation/Screens/Screen_1.dart';
//import 'package:navigation/Screens/Screen_2.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      //onGenerateRoute: (settings) => AppRoute.onGenerateRoute(settings),
      onGenerateRoute: AppRoute.onGenerateRoute,
      
      //routes: {
        //Screen1.routName: (context) => const Screen1(),
        //Screen2.routName: (context) => const Screen2(),
      //},
    );
  }
}

