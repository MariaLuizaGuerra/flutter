import 'package:flutter/material.dart';

class Exercicio4 extends StatelessWidget {
  const Exercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. appBar
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        leading: const Icon(Icons.menu, color: Colors.white),
        elevation: 0,
      ),
      
      // 2. body
      body: Column(
        children: [
          Container(
            // Define 15% da altura total da tela
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 149, 33, 243),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Olá, esse é o exercício 4!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
          ),
          // O restante do body fica aqui
        ],
      ),
    );

  }
}
