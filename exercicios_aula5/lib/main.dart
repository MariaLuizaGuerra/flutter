import 'package:exercicios_aula5/exercicio1.dart';
import 'package:exercicios_aula5/exercicio2.dart';
import 'package:exercicios_aula5/exercicio3.dart';
import 'package:exercicios_aula5/exercicio4.dart';
import 'package:exercicios_aula5/exercicio5.dart';
import 'package:exercicios_aula5/exercicio6.dart';
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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 255, 0, 0))),
      home: const Exercicio6(),
    );
  }
}
