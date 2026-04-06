import 'package:flutter/material.dart';

class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true ,
        title: const Text("Exercicio 1"),
      ),
      body: Column( 
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text( "Bem vindo, usuário!"),
                Image.asset('assets/images/passaro.png'),
              ],
            ),  
          ),
        ],
      ),
    );
  }
}