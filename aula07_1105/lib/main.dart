import 'package:aula07_1105/gradeHoraria.dart';
import 'package:aula07_1105/views/exercicio1.dart';
import 'package:aula07_1105/views/exercicio2.dart';
import 'package:aula07_1105/views/exercicio3.dart';
import 'package:aula07_1105/views/exercicio4/exercicio4.dart';
import 'package:aula07_1105/views/exercicio5/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless Widget',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 162, 0, 255)),
      ),
      home: Exercicio1(),
    );
  }
}

