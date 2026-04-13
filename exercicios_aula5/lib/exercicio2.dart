import 'package:flutter/material.dart';

class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true ,
        title: const Text("Exercicio 2"),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              Icon(Icons.star, size: 35),
              SizedBox(width: 30),
              Icon(Icons.star, size: 35),
              SizedBox(width: 30),
              Icon(Icons.star, size: 35),
              SizedBox(width: 30),
              Icon(Icons.star, size: 35),
              SizedBox(width: 30),
              Icon(Icons.star_border, size: 35,)
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 05, vertical: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               TextButton(
                onPressed: () {},
                child: Text('Anterior', style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
              ),
              TextButton(
              onPressed: () {},
              child: Text('Próximo', style: TextStyle(color:  Theme.of(context).colorScheme.inversePrimary)),
              ),
              ],
            ),
            
          ),
        ],
      ),
    );
  }
}