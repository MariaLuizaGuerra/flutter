import 'package:flutter/material.dart';
import 'package:instagram_style_app/models/post.dart';

// Tela para adicionar um novo post (Stateful por causa do formulário)
class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final _formKey = GlobalKey<FormState>();

  // Controladores para capturar o texto dos campos
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Post'),
        // Botão de fechar sem salvar
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context); // volta sem retornar dados
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Campo de título
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: 'Título'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Entre com o título do post';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              // Campo de texto/conteúdo
              TextFormField(
                controller: _textController,
                decoration: const InputDecoration(labelText: 'Texto'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Entre com o texto do post';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Botão de salvar
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Salvando...')),
                    );
                    // Cria o objeto Post e retorna para a HomePage
                    final novoPost = Post(
                      title: _titleController.text,
                      text: _textController.text,
                    );
                    Navigator.pop(context, novoPost);
                  }
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
