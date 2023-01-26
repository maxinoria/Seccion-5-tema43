//en este ejercicio conectamos main.dart con home_screen.dart
// a modo de realizar los cambios y ordenar las carpetas a fin de
// mas facil lectura de codigo

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        //use esta propieda (centerTitle) para centrar el titulo
        centerTitle: true,
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
            //en esta constante children solo admitira widgets
            children: [
              const Text(
                'Numeros de click',
                style: fontSize30,
              ),
              Text('$counter', style: fontSize30),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
          // para hacer referencia de la funcion la coloco sin los parantesis y la coma increase(),
          increaseFn: increase,
          resetFn: reset,
          decreaseFn: decrease),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function resetFn;
  final Function decreaseFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.resetFn,
    required this.decreaseFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.replay_circle_filled_outlined),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          onPressed: () => increaseFn(),
        ),
      ],
    );
  }
}
