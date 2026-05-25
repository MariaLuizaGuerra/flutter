import 'package:flutter/material.dart';

class SaudacaoView extends StatefulWidget {
  const SaudacaoView({super.key});

  @override
  State<SaudacaoView> createState() =>
      _SaudacaoViewState();
}

class _SaudacaoViewState
    extends State<SaudacaoView> {

  final _formKey = GlobalKey<FormState>();

  final TextEditingController nomeController =
      TextEditingController();

  final TextEditingController sentimentoController =
      TextEditingController();

  bool mostrarResultado = false;

  void validarFormulario() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        mostrarResultado = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saudação'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              TextFormField(
                controller: nomeController,
                decoration: const InputDecoration(
                  labelText: 'Digite seu nome',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe seu nome';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              TextFormField(
                controller: sentimentoController,
                decoration: const InputDecoration(
                  labelText:
                      'Como você está se sentindo?',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Informe como está se sentindo';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: validarFormulario,
                child: const Text('Mostrar Saudação'),
              ),

              const SizedBox(height: 30),

              if (mostrarResultado)
                Column(
                  children: [
                    Text(
                      'Olá ${nomeController.text}!\n'
                      'Que bom saber que você está '
                      '${sentimentoController.text}!',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 22,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Image.network(
                      'https://cdn-icons-png.flaticon.com/512/742/742751.png',
                      height: 150,
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}