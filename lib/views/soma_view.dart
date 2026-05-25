import 'package:flutter/material.dart';

class SomaView extends StatefulWidget {
  const SomaView({super.key});

  @override
  State<SomaView> createState() => _SomaViewState();
}

class _SomaViewState extends State<SomaView> {
  final TextEditingController numero1Controller =
      TextEditingController();

  final TextEditingController numero2Controller =
      TextEditingController();

  double resultado = 0;

  void somar() {
    double n1 =
        double.tryParse(numero1Controller.text) ?? 0;

    double n2 =
        double.tryParse(numero2Controller.text) ?? 0;

    setState(() {
      resultado = n1 + n2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Soma'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: numero1Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Número 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: numero2Controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Número 2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: somar,
              child: const Text('Somar'),
            ),
            const SizedBox(height: 20),
            Text(
              'Resultado: $resultado',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}