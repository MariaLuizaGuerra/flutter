import 'package:flutter/material.dart';
import 'package:instagram_style_app/models/post.dart';
import 'package:instagram_style_app/views/add_post.dart';
import 'package:instagram_style_app/views/post_item.dart';
import 'package:instagram_style_app/views/story_item.dart';

// Tela principal do app (Stateful para atualizar a lista de posts)
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de posts usando a classe modelo Post
  final List<Post> _posts = [
    Post(title: 'Post 1', text: 'Conteúdo do post 1'),
    Post(title: 'Post 2', text: 'Conteúdo do post 2'),
    Post(title: 'Post 3', text: 'Conteúdo do post 3'),
  ];

  // Lista de stories (simples, só texto)
  final List<String> _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram Style APP'),
      ),
      body: Column(
        children: [
          // Lista de stories — rolagem horizontal, altura fixa
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryItem(text: _stories[index]);
              },
            ),
          ),
          // Lista de posts — ocupa o restante da tela
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return PostItem(post: _posts[index]); // passa o objeto Post
              },
            ),
          ),
        ],
      ),
      // Botão para abrir a tela de adicionar novo post
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Aguarda o retorno da tela AddPost (um objeto Post ou null)
          final result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddPost()),
          );
          // Se recebeu um Post de volta, adiciona na lista
          if (result != null) {
            setState(() {
              _posts.add(result as Post);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
