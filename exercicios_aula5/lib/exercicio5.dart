import 'package:flutter/material.dart';

class Exercicio5 extends StatelessWidget {
  const Exercicio5({super.key});

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
            // Define altura da tela
            height: MediaQuery.of(context).size.height * 0.15,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.inversePrimary,
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
                  'Olá, esse é o exercício 5!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.woman,
                  color: Colors.white,
                  size: 40,
                ),
              ],
            ),
          ),
          /*
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical:08 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              //Anterior
               TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary
                ),
                onPressed: () {},
                child: Text('Mais', style: TextStyle(color:  Theme.of(context).colorScheme.surface)),
              ),
              
              ],
            ),
          ),*/

          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
      // Texto da esquerda
      const Text(
        'Recomendados',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black87,
        ),
      ),
      
      // Botão "Mais" da direita
      TextButton(
        onPressed: () {
          // Sua ação aqui
        },
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        ),
        child: Text(
          'Mais',
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
)
        ],
      ),
    );

  }
}
