import 'package:flutter/material.dart';

class Exercicio3 extends StatelessWidget {
  const Exercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true ,
        title: Text('Exercicio 3'),
      ),
      body: Column( 
        children: [
          Center(
            child: Column(
              children: [
                SizedBox(height: 70),
                Text("Dash",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Image.asset('assets/images/passaro.png'),
              ],
            ),  
          ),
        
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20), // Espaço fora da borda
            padding: const EdgeInsets.all(10),              // Espaço entre as estrelas e a borda
            decoration: BoxDecoration( border: Border.all(color: Colors.grey, width: 2.0)),
            child: Row(
              mainAxisSize: MainAxisSize.min, // Faz o Container "abraçar" as estrelas e não ocupar a largura toda
              children: [
                Icon(Icons.star, size: 30),
                SizedBox(width: 35),
                Icon(Icons.star, size: 30),
                SizedBox(width: 35),
                Icon(Icons.star, size: 30),
                SizedBox(width: 35),
                Icon(Icons.star, size: 30),
                SizedBox(width: 35),
                Icon(Icons.star_border, size: 30),
            ],
          ),
        ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 05, vertical: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //Anterior
               TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(103, 189, 143, 231)
                ),
                onPressed: () {},
                child: Text('Anterior', style: TextStyle(color: const Color.fromARGB(255, 172, 95, 243))),
              ),
              //Proximo
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(103, 189, 143, 231)
                ),
              onPressed: () {},
              child: Text('Próximo', style: TextStyle(color: const Color.fromARGB(255, 172, 95, 243))),
              ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}