// Modelo de dados de um Post
class Post {
  String title;
  String text;
  bool liked; // começa como false por padrão

  Post({
    required this.title,
    required this.text,
    this.liked = false,
  });

  // Altera o valor de liked (like/unlike)
  void like() {
    liked = !liked;
  }
}
