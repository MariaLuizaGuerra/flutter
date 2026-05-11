import 'package:flutter/material.dart';

class Receita extends StatelessWidget {
  const Receita({super.key});

  @override
  Widget build(BuildContext context) {
    // importante
    Size size = MediaQuery.sizeOf(context);
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receita de Bolo de Cenoura'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagem da Receita
            SizedBox(
              height: size.height * 0.3,
              child: Image.asset(
                'assets/images/bolo_cenoura.jpg',
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 20),

            // Pontuação da Receita (Row de estrelas)
            Row(
              children: [
                for (int i = 0; i < 4; i++)
                  Icon(Icons.star, color: colorScheme.primary, size: 24),
                Icon(
                  Icons.star_half,
                  color: colorScheme.primary,
                  size: 24,
                ),
                const SizedBox(width: 8),
                const Text('4.5 (250 avaliações)', style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 10),

            // Seção de Ingredientes (itens não numerados — padrão)
            Section(
              title: 'Ingredientes',
              itens: const [
                'Cenoura, Ovos, Oleo, Açucar, Farinha, Fermento',
                'Cobertura: Açucar, Chocolate em pó, Manteiga, Leite',
              ],
            ),

            const SizedBox(height: 20),

            // Seção do Modo de Preparo (itens numerados)
            Section(
              title: 'Modo de Preparo',
              numerado: true,
              itens: const [
                'Bata no liquidificador a cenoura, os ovos e o óleo.',
                'Adicione o açúcar e bata novamente até ficar homogêneo.',
                'Transfira para uma tigela e misture a farinha e o fermento.',
                'Despeje em forma untada e enfarinhada.',
                'Asse em forno preaquecido a 180 °C por cerca de 40 minutos.',
                'Para a cobertura, misture o açúcar, o chocolate, a manteiga e o leite em fogo médio até engrossar.',
                'Despeje a cobertura quente sobre o bolo ainda na forma.',
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────
// Widget: Item
// ─────────────────────────────────────────────
class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.texto,
    this.icone = Icons.square,
    // Tarefa 3: atributo que define se o item é numerado (default: false)
    this.numerado = false,
    // Tarefa 3: índice opcional — só usado quando numerado == true
    this.index,
  });

  final String texto;
  final IconData icone;
  final bool numerado;
  final int? index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tarefa 3: exibe número ou ícone conforme o atributo `numerado`
          numerado
              ? SizedBox(
                  width: 24,
                  child: Text(
                    '${index ?? 0}.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Icon(
                    icone,
                    size: 8,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
          const SizedBox(width: 4),
          Expanded(child: Text(texto)),
        ],
      ),
    );
  }
}

// ─────────────────────────────────────────────
// Widget: Section
// ─────────────────────────────────────────────
class Section extends StatelessWidget {
  const Section({
    super.key,
    required this.title,
    required this.itens,
    // Tarefa 3: seção pode ser numerada; repassado para cada Item
    this.numerado = false,
  });

  final String title;
  final List<String> itens;
  final bool numerado;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title:',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: colorScheme.tertiary,
          ),
        ),

        const SizedBox(height: 10),

        // Tarefa 2 + 3: lista construída com o componente Item
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (int i = 0; i < itens.length; i++)
              Item(
                texto: itens[i],
                numerado: numerado,
                // Tarefa 3: index começa em 1 para leitura natural
                index: numerado ? i + 1 : null,
              ),
          ],
        ),
      ],
    );
  }
}
