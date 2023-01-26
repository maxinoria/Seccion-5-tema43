// se recomienda importaciones propias de flutter se coloquen arriba

import 'package:flutter/material.dart';

//segundo paquetes de terceros

//tercero su codigo
//import 'package:counter_app/screens/home_screen.dart';
import 'package:counter_app/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen()
      home: CounterScreen(),
    );
  }
}
