class Book {
  String id;
  String title;
  String author;
  String coverImage;
  String download;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.coverImage,
    required this.download,
  });

  Book.fromJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        title = json['title'].toString(),
        author = json['author'].toString(),
        coverImage = json['cover_url'].toString(),
        download = json['download_url'].toString();
}
