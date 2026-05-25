import 'package:flutter/material.dart';

class EspelhoTexto extends StatefulWidget {
  const EspelhoTexto({super.key});

  @override
  State<EspelhoTexto> createState() => _EspelhoTextoState();
}

class _EspelhoTextoState extends State<EspelhoTexto> {
  String _textoDigitado = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Espelho de Texto',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'O que você digitar aparece abaixo em tempo real.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          TextField(
            onChanged: (value) {
              setState(() => _textoDigitado = value);
            },
            maxLines: 3,
            decoration: InputDecoration(
              labelText: 'Digite algo aqui...',
              alignLabelWithHint: true,
              prefixIcon: const Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Icon(Icons.edit_outlined),
              ),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            ),
          ),
          const SizedBox(height: 24),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: _textoDigitado.isEmpty
                  ? Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.4)
                  : Theme.of(context).colorScheme.secondaryContainer,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: _textoDigitado.isEmpty
                    ? Colors.transparent
                    : Theme.of(context).colorScheme.secondary,
                width: 1.5,
              ),
            ),
            child: _textoDigitado.isEmpty
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.keyboard_alt_outlined,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant
                              .withOpacity(0.5)),
                      const SizedBox(width: 8),
                      Text(
                        'Aguardando digitação...',
                        style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onSurfaceVariant
                              .withOpacity(0.5),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  )
                : Text(
                    _textoDigitado,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                  ),
          ),
          const SizedBox(height: 16),
          if (_textoDigitado.isNotEmpty)
            Text(
              '${_textoDigitado.length} caractere${_textoDigitado.length == 1 ? '' : 's'}',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
              textAlign: TextAlign.end,
            ),
        ],
      ),
    );
  }
}
