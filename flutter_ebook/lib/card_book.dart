import 'package:flutter/material.dart';

class CardBook extends StatelessWidget {
  final String title;
  final String coverImage;
  final String author;

  const CardBook({
    Key? key,
    required this.title,
    required this.coverImage,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(coverImage),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ]),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          author,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
