import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'ex1_calculadora.dart';
import 'ex2_saudacao.dart';
import 'ex3_espelho.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _paginaAtual = 0;

  final List<Widget> _paginas = const [
    _HomeContent(),
    Calculadora(),
    Saudacao(),
    EspelhoTexto(),
  ];

  final List<NavigationDestination> _destinos = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      selectedIcon: Icon(Icons.home),
      label: 'Início',
    ),
    NavigationDestination(
      icon: Icon(Icons.calculate_outlined),
      selectedIcon: Icon(Icons.calculate),
      label: 'Calculadora',
    ),
    NavigationDestination(
      icon: Icon(Icons.sentiment_satisfied_outlined),
      selectedIcon: Icon(Icons.sentiment_satisfied),
      label: 'Saudação',
    ),
    NavigationDestination(
      icon: Icon(Icons.text_fields_outlined),
      selectedIcon: Icon(Icons.text_fields),
      label: 'Espelho',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle()),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        centerTitle: true,
      ),
      body: _paginas[_paginaAtual],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _paginaAtual,
        onDestinationSelected: (index) {
          setState(() => _paginaAtual = index);
        },
        destinations: _destinos,
      ),
    );
  }

  String _appBarTitle() {
    switch (_paginaAtual) {
      case 0:
        return 'Início';
      case 1:
        return 'Calculadora';
      case 2:
        return 'Como você está?';
      case 3:
        return 'Espelho de Texto';
      default:
        return 'App';
    }
  }
}

// ─────────────────────────────────────────────
// Conteúdo da HomePage com animação Lottie (ex5)
// ─────────────────────────────────────────────
class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 8),

          // ── Animação Lottie (exercício 5) ──────────────────
          // Opção A: arquivo local (baixe do lottiefiles.com e
          //   coloque em assets/animations/welcome.json):
          //   Lottie.asset('assets/animations/welcome.json', height: 220)
          //
          // Opção B: URL direta (exige internet):
          Lottie.network(
            'https://assets10.lottiefiles.com/packages/lf20_jcikwtux.json',
            height: 220,
            repeat: true,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 220,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: Text('🎉', style: TextStyle(fontSize: 80)),
                ),
              );
            },
          ),
          // ────────────────────────────────────────────────────

          const SizedBox(height: 8),
          Text(
            'Bem-vindo! 👋',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Explore as funcionalidades pelo menu abaixo.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          _FeatureCard(
            icon: Icons.calculate,
            title: 'Calculadora',
            description: 'Some dois valores numéricos.',
            color: Colors.blue,
          ),
          const SizedBox(height: 12),
          _FeatureCard(
            icon: Icons.sentiment_satisfied_alt,
            title: 'Saudação',
            description: 'Informe seu nome e como está se sentindo.',
            color: Colors.orange,
          ),
          const SizedBox(height: 12),
          _FeatureCard(
            icon: Icons.text_fields,
            title: 'Espelho de Texto',
            description: 'Veja o texto aparecer em tempo real.',
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color color;

  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: color, size: 28),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurfaceVariant,
                          )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
