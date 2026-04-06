import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const Exercicio1(),
    );
  }
}

// Exercicio 1
class Exercicio1 extends StatelessWidget {
  const Exercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercicio 1"),
      ),
      body: const Center(child: Text("Hello Word")),
    );
  }
}

// ------------
// Exercicio 2
class Exercicio2 extends StatelessWidget {
  const Exercicio2({super.key});

   String _getfullname(String nome, String sobrenome) => '$nome $sobrenome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercicio 2"),
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text(" Hello Word"), 
          Text(_getfullname('Guerra, ', 'Maria'))
          ],
        ),
      ),
    );
  }
}

//----------
// Exercicio 3
class Exercicio3 extends StatelessWidget {
  const Exercicio3({super.key});

  String _getfullname(String nome, String sobrenome) =>
      '$nome ${sobrenome.toUpperCase()}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercicio 3"),
      ),
      body: Center(
        child: Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text(" Hello Word "), 
          Text(_getfullname('Guerra', 'Maria'))
          ],
        ),
      ),
    );
  }
}

// --------------
// Exercicio 4
class Exercicio4 extends StatelessWidget {
  const Exercicio4({super.key});

  String _getfullname(String nome, String sobrenome) =>
    '$nome ${sobrenome.toUpperCase()}';


  String _getFormattedDate() {
    DateTime now = DateTime.now();
    return "${now.day}/${now.month}/${now.year}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercicio 4"),
      ),
      body: Column(
        children: [
          // Row para o Nome e a Data
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _getfullname('Guerra', 'Maria')
                ),
                Text(
                  _getFormattedDate(),
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          const Expanded(
            child: Center(
              child: Text(
                'Hello World',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//--------------
// Exercicio5
class Exercicio5 extends StatelessWidget {
  const Exercicio5({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercicio 5"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
                const Icon(Icons.account_circle, size: 50 ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Nome', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Telefone', style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.phone, color: Color.fromARGB(255, 0, 255, 8)),
              ],
        ),
      ),
    );
  }
}

// -------------
// Exercicio 6
class Exercicio6 extends StatelessWidget {
  const Exercicio6({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercicio 6"),
      ),body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Container principal que simula a barra de pesquisa
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(84, 207, 152, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Color.fromARGB(255, 126, 0, 243)),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text('Pesquisar...', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//------------
//Exercicio 7
class Exercicio7 extends StatelessWidget {
  const Exercicio7({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercicio7"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            //EXERCÍCIO 6
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(84, 207, 152, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Color.fromARGB(255, 110, 15, 199)),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text('Pesquisar...', style: TextStyle(color: Colors.grey[600])),
                  ),
                ],
              ),
            ),
            
            // EXERCÍCIO 5 
            Row(
              children: [
                Icon(Icons.account_circle, size: 50, color: Colors.indigo[900]),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Nome', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    Text('Telefone', style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.phone, color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }
}