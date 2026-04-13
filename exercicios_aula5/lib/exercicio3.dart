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
            padding: EdgeInsets.symmetric(horizontal: 05, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //Anterior
               TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary
                ),
                onPressed: () {},
                child: Text('Anterior', style: TextStyle(color:  Theme.of(context).colorScheme.surface)),
              ),
              //Proximo
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary
                ),
              onPressed: () {},
              child: Text('Próximo', style: TextStyle(color:  Theme.of(context).colorScheme.surfaceBright)),
              ),
              ],
            ),
            
          ),
          SizedBox(
          height: 200, // Defina a altura total dos cards
          child: ListView.builder(
    scrollDirection: Axis.horizontal, // Faz o scroll ser para os lados
    padding: const EdgeInsets.symmetric(horizontal: 16),
    itemCount: 5, // Quantidade de itens na lista
    itemBuilder: (context, index) {
      return Container(
        width: 150, // Largura de cada card
        margin: const EdgeInsets.only(right: 12), // Espaçamento entre os cards
        decoration: BoxDecoration(
          color: const Color(0xFFD1E8E2), // Cor de fundo do card
          borderRadius: BorderRadius.circular(20),
        ),
        /*child: Center(
          child: Image.network(
            Image.asset('assets/images/passaro.png'),
            height: 100,
          ),

        ),*/
        child: Center(
          child: Image.network(
            'asset/images/passaro.png', // Substitua pela sua imagem
            height: 70,
          ),
        )
      );
    },
  ),
)
        ],
        
      ),
    );
  }
}