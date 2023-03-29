import 'package:calculadora_simples/Calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora - Simples",
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Calculadora(),
    );
  }
}
