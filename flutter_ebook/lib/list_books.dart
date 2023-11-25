import 'package:flutter/material.dart';
import '../models/books.dart';
import 'card_book.dart';

class ListBook extends StatelessWidget {
  const ListBook({
    Key? key,
    required this.books,
  }) : super(key: key);

  final List<Book> books;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
      ),
      itemCount: books.length,
      itemBuilder: ((context, index) {
        final book = books[index];
        return CardBook(
          title: book.title,
          author: book.author,
          coverImage: book.coverImage,
        );
      }),
    );
  }
}
