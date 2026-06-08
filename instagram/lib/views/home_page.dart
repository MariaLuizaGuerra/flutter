import 'package:flutter/material.dart';
import 'package:instagram/views/post_item.dart';
import 'package:instagram/views/story_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List _post = ['post 1', 'post 2', 'post 3'];
  final List _stories = ['Story 1', 'Story 2', 'Story 3', 'Story 4', 'Story 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intagram Style App"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: _stories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return StoryItem(text: _stories[index]);
              }
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index){
                return PostItem(
                  text: _post[index],
                );
              },
            ),
          ),
        ],
     ),
    );
  }
}