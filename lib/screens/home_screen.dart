//en este ejercicio conectamos main.dart con home_screen.dart
// a modo de realizar los cambios y ordenar las carpetas a fin de
// mas facil lectura de codigo

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 15;

    return Scaffold(
      appBar: AppBar(
        //use esta propieda (centerTitle) para centrar el titulo
        centerTitle: true,
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            //en esta constante children solo admitira widgets
            children: [
              const Text(
                'Nmeros de click',
                style: fontSize30,
              ),
              Text('$counter', style: fontSize30),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
          print('hola mundo');
        },
      ),
    );
  }
}
