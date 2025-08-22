import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  Color textColor = Colors.purple;
  void changeColor(Color color){
    setState(() {
      textColor = color;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              GestureDetector(
                onTap: () {
                  print('blue');
                  changeColor(Colors.blue);
                },
                child: Container(
                  width: 100, 
                  height: 100, 
                  color: Colors.blue
                  ),
              ),

              GestureDetector(
                onTap: () {
                  print('yellow');
                  textColor = Colors.yellow;
                  changeColor(Colors.yellow);
                },
                child: Container(
                  width: 100, 
                  height: 100, 
                  color: Colors.yellow
                  ),
              ),

              GestureDetector(
                onTap: () {
                  print('purple');
                  textColor = Colors.purple;
                  changeColor(Colors.purple);
                },
                child: Container(
                  width: 100, 
                  height: 100, 
                  color: Colors.purple
                  ),
              ),

            ],),
            const SizedBox(height: 50,),
            Text(
              'Color',
              style: TextStyle( fontSize: 38, color: textColor),
            ),
          ],
        )
      )
    );
  }
}
