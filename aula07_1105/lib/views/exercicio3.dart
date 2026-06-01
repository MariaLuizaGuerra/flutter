import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField em Tempo Real',
      home: const TextoTempoReal(),
    );
  }
}

class TextoTempoReal extends StatefulWidget {
  const TextoTempoReal({super.key});

  @override
  State<TextoTempoReal> createState() => _TextoTempoRealState();
}

class _TextoTempoRealState extends State<TextoTempoReal> {
  String _texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField em Tempo Real'),
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
              'Você digitou:',
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