import 'package:flutter/material.dart';

// Widget que representa cada item da lista de stories (círculo horizontal)
class StoryItem extends StatelessWidget {
  final String text;

  const StoryItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inversePrimary,
          shape: BoxShape.circle, // formato circular
        ),
        child: Center(
          child: Text(text, style: const TextStyle(fontSize: 14)),
        ),
      ),
    );
  }
}
