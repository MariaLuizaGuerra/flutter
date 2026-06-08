import 'package:flutter/material.dart';

class PostItem extends StatelessWidget{
  final String text;

  const PostItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 200,
        color: Theme.of(context).colorScheme.primaryContainer,
        child:  Center(child: Text(text, style: const TextStyle(fontSize: 20),)),
      ),
    );
  }
}