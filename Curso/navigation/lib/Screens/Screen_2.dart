import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  //static const routName = '/Screen2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('Volver a Screen 1'),
        )
      ),
    );
  }
}