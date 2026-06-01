import 'package:flutter/material.dart';

class Ex3Page extends StatefulWidget {
  const Ex3Page({super.key});

  @override
  State<Ex3Page> createState() => _Ex3PageState();
}

class _Ex3PageState extends State<Ex3Page> {
  String _texto = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
