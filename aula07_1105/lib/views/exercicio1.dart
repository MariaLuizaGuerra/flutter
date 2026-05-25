import 'package:flutter/material.dart';

class Exercicio1 extends StatefulWidget {
  const Exercicio1({super.key});

  @override
  State<Exercicio1> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Exercicio1> {
  final TextEditingController _ctrl1 = TextEditingController();
  final TextEditingController _ctrl2 = TextEditingController();
  String _resultado = '';

  void _somar() {
    final double? numero1 = double.tryParse(_ctrl1.text);
    final double? numero2 = double.tryParse(_ctrl2.text);

    if (numero1 == null || numero2 == null) {
      setState(() => _resultado = 'Por favor, insira valores válidos.');
      return;
    }

    final double soma = numero1 + numero2;
    setState(() {
      _resultado = soma == soma.truncateToDouble()
          ? 'Resultado: ${soma.toInt()}' : 'Resultado: $soma';
    });
  }

  @override
  void dispose() {
    _ctrl1.dispose();
    _ctrl2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(          
      body: Padding(
       padding:  EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Calculadora de Soma',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 32),
          TextField(
            controller: _ctrl1,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              labelText: 'Primeiro valor',
              prefixIcon: const Icon(Icons.looks_one_outlined),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _ctrl2,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              labelText: 'Segundo valor',
              prefixIcon: const Icon(Icons.looks_two_outlined),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _somar,
              icon: const Icon(Icons.add),
              label: const Text('Somar'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
            ),
          ),
          const SizedBox(height: 24),
          if (_resultado.isNotEmpty)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                _resultado,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ), 
       ),
        ],
      ),
      ),
    );
  }
}
