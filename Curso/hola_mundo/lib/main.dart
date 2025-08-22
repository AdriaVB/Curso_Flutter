import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'BebasNeue'),
      home: const Scaffold(
        body: Stack(
          alignment: Alignment.center,
          fit: StackFit.expand,
          children: [
            Image(image: AssetImage('assets/images/mundo.png'),fit: BoxFit.cover,),
            //Image(image: NetworkImage('https://i.pinimg.com/736x/68/74/09/68740916e1a5330fe1c4ca0d49c7ff79.jpg'),fit: BoxFit.cover,),
            Positioned(top:300,child: Text('Hola Mundo', style: TextStyle(fontSize: 48, color: Colors.white),)),  
          ],
        ),
      ),
    );
  }
}
