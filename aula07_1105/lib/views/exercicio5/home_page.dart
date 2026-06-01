import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'ex1_page.dart';
import 'ex2_page.dart';
import 'ex3_page.dart';


class Exercicio5 extends StatelessWidget {
  const Exercicio5();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/animation/festa.json',
            width: 280,
            height: 280,
            repeat: true,
          ),
          const SizedBox(height: 16),
          const Text(
            'Bem-vindo!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _abaSelecionada = 0;

  static const List<String> _titulos = [
    'Home',
    'Exercício 1 — Soma',
    'Exercício 2 — Como você está?',
    'Exercício 3 — Texto em Tempo Real',
  ];

  static const List<Widget> _paginas = [
    Exercicio5(),
    Ex1Page(),
    Ex2Page(),
    Ex3Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulos[_abaSelecionada]),
      ),
      body: _paginas[_abaSelecionada],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _abaSelecionada,
        onTap: (index) {
          setState(() {
            _abaSelecionada = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_outlined),
            label: 'Ex 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_emotions_outlined),
            label: 'Ex 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.text_fields),
            label: 'Ex 3',
          ),
        ],
      ),
    );
  }
}
