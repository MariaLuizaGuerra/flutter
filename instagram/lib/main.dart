import 'package:flutter/material.dart';
import 'package:instagram/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 209, 8, 38)),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
