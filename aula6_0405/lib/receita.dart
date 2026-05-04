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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Imagem da Receita
            SizedBox(
              height: size.height * 0.3,
              child: Image.asset(
                'assets/images/bolo_cenoura.jpg', // Verifique o caminho de imagem
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
                ), // Meia estrela
                SizedBox(width: 8),
                Text('4.5 (250 avaliações)', style: TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 10),

            Section(title: 'Ingredientes',
            itens:[
              'Cenoura, Ovos, Oleo, Açucar, Farinha, Fermento',
              'Cobertura: Açucar, Chocolate em pó, Manteiga, Leite',
            ],),

            SizedBox(height: 20),

            // Seção do Modo de Preparo
            Text(
              'Modo de Preparo:',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: colorScheme.tertiary,
              ),
            ),

            const SizedBox(height: 10),

            // Lista de passos para preparo
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(
                            Icons.square,
                            size: 8,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Bata cenoura, ovos e óleo no liquidificador.',
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(
                            Icons.square,
                            size: 8,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Misture os líquidos com açúcar e farinha. Adicione o fermento por último.',
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(
                            Icons.square,
                            size: 8,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Asse em forno médio (180°C) por 30-40 minutos. ',
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(
                            Icons.square,
                            size: 8,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        'Para a cobertura: Cozinhe todos os ingredientes em fogo baixo até engrossar. Despeje sobre o bolo quente.',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class Section extends StatelessWidget {
  const Section({super.key, required this.title, required this.itens});

  final String title;
  final List<String> itens;

// Seção de Ingredientes
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ingredientes: ',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.tertiary,
                  ),
                ),

                const SizedBox(height: 10),

                // Lista de items
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        for(var item in itens)
                          Row(
                            children: [
                              Icon(
                                Icons.square,
                                size: 8,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  item
                                  ),),
                            ],
                          ),
                      ],
                    ),
                    
              ],
            );
  }
}