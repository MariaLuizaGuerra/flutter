import 'package:flutter/material.dart';

class Exercicio3 extends StatefulWidget {
  const Exercicio3({super.key});

  @override
  State<Exercicio3> createState() => _TextoTempoRealState();
}

class _TextoTempoRealState extends State<Exercicio3> {
  String _texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Texto em tempo real'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Digite algo...',
                border: OutlineInputBorder(),
              ),
              onChanged: (valor) {
                setState(() {
                  _texto = valor;
                });
              },
            ),
            const SizedBox(height: 24),
            const Text(
              'Você está digitando:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(_texto),
          ],
        ),
      ),
    );
  }
}