import 'package:flutter/material.dart';

class Exercicio2 extends StatefulWidget {
  const Exercicio2({super.key});

  @override
  State<Exercicio2> createState() => _Exercicio2State();
}

class _Exercicio2State extends State<Exercicio2> {
  final _formKey = GlobalKey<FormState>();
  final _nomeCtrl = TextEditingController();
  final _sentimentoCtrl = TextEditingController();

  String _nome = '';
  String _sentimento = '';
  bool _mostrarSaudacao = false;

  void _enviar() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _nome = _nomeCtrl.text;
        _sentimento = _sentimentoCtrl.text;
        _mostrarSaudacao = true;
      });
    }
  }

  @override
  void dispose() {
    _nomeCtrl.dispose();
    _sentimentoCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(                          // <-- corrige o erro
      appBar: AppBar(title: const Text('Como você está?')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nomeCtrl,
                decoration: InputDecoration(
                  labelText: 'Seu nome',
                  prefixIcon: const Icon(Icons.person_outline),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                validator: (value) =>
                    (value == null || value.trim().isEmpty)
                        ? 'Por favor, insira seu nome'
                        : null,
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _sentimentoCtrl,
                decoration: InputDecoration(
                  labelText: 'Como você está se sentindo?',
                  prefixIcon: const Icon(Icons.emoji_emotions_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                validator: (value) =>
                    (value == null || value.trim().isEmpty)
                        ? 'Por favor, descreva como está se sentindo'
                        : null,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _enviar,
                  icon: const Icon(Icons.send),
                  label: const Text('Enviar'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ),
              ),
              if (_mostrarSaudacao) ...[
                const SizedBox(height: 32),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Olá, $_nome!, interesante saber que você está  $_sentimento ',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onPrimaryContainer,
                          fontWeight: FontWeight.bold,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 24),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/images/images.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}