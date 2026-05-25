import 'package:flutter/material.dart';

class Saudacao extends StatefulWidget {
  const Saudacao({super.key});

  @override
  State<Saudacao> createState() => _SaudacaoState();
}

class _SaudacaoState extends State<Saudacao> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nomeCtrl = TextEditingController();
  final TextEditingController _sentimentoCtrl = TextEditingController();

  String? _nome;
  String? _sentimento;

  // Mapeia sentimento para emoji/imagem de rede
  Map<String, String> get _imagemPorSentimento {
    final s = (_sentimento ?? '').toLowerCase();
    if (s.contains('feliz') || s.contains('alegre') || s.contains('bem') || s.contains('ótimo')) {
      return {
        'emoji': '😄',
        'url': 'https://images.unsplash.com/photo-1529333166437-7750a6dd5a70?w=400&q=80',
        'alt': 'Pessoa feliz'
      };
    } else if (s.contains('triste') || s.contains('mal') || s.contains('chateado')) {
      return {
        'emoji': '😢',
        'url': 'https://images.unsplash.com/photo-1474552226712-ac0f0961a954?w=400&q=80',
        'alt': 'Pessoa triste'
      };
    } else if (s.contains('cansado') || s.contains('cansada') || s.contains('sono')) {
      return {
        'emoji': '😴',
        'url': 'https://images.unsplash.com/photo-1541781774459-bb2af2f05b55?w=400&q=80',
        'alt': 'Pessoa cansada'
      };
    } else {
      return {
        'emoji': '🙂',
        'url': 'https://images.unsplash.com/photo-1552058544-f2b08422138a?w=400&q=80',
        'alt': 'Pessoa'
      };
    }
  }

  void _enviar() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _nome = _nomeCtrl.text.trim();
        _sentimento = _sentimentoCtrl.text.trim();
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
    final imgData = _imagemPorSentimento;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Como você está?',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Form(
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
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Por favor, informe seu nome.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _sentimentoCtrl,
                  decoration: InputDecoration(
                    labelText: 'Como você está se sentindo?',
                    hintText: 'Ex: feliz, triste, cansado...',
                    prefixIcon: const Icon(Icons.mood),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Por favor, descreva como está se sentindo.';
                    }
                    return null;
                  },
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
              ],
            ),
          ),
          const SizedBox(height: 32),
          if (_nome != null && _sentimento != null) ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Text(
                    '${imgData['emoji']} Olá, $_nome!',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Que bom saber que você está $_sentimento!',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imgData['url']!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceVariant,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Center(child: CircularProgressIndicator()),
                  );
                },
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceVariant,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      imgData['emoji']!,
                      style: const TextStyle(fontSize: 80),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
