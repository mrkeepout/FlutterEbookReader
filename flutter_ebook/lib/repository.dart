import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/books.dart';

Future<List<Book>> getBooks() async {
  final response = await http.get(Uri.parse('https://escribo.com/books.json'));

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);

    return List<Book>.from(json.map((element) {
      return Book.fromJson(element);
    }));
  } else {
    return Future.error(
        "An error occurred while connecting to the HTTP service.");
  }
}
