import 'package:flutter/material.dart';
import 'package:instagram_style_app/models/post.dart';

// Widget que representa cada item da lista de posts
class PostItem extends StatefulWidget {
  final Post post; // recebe um objeto Post em vez de String

  const PostItem({super.key, required this.post});

  @override
  State<PostItem> createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: ListTile(
          // Título do post
          title: Text(
            widget.post.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          // Texto/conteúdo do post
          subtitle: Text(widget.post.text),
          // Ícone de coração: preenchido se liked = true, vazio se false
          trailing: IconButton(
            icon: Icon(
              widget.post.liked ? Icons.favorite : Icons.favorite_border,
              color: widget.post.liked ? Colors.red : null,
            ),
            onPressed: () {
              // Chama o método like() e atualiza a tela
              setState(() {
                widget.post.like();
              });
            },
          ),
        ),
      ),
    );
  }
}
