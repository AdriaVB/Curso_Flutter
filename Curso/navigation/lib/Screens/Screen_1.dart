import 'package:flutter/material.dart';
import 'package:navigation/Routes/Routs.dart';


class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  //static const routName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pushNamed(context, Routs.Screen2);
          },
          child: const Text('Ir a la Screan 2'),
        )
      ),
    );
  }
}