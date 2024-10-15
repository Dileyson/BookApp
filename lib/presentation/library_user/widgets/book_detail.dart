import 'package:flutter/material.dart';
import 'package:myapp/domain/model/book_detail_model.dart';
import 'package:myapp/presentation/library_user/widgets/book_detail_image.dart';

class BookDetail extends StatelessWidget {
  final Book book;

  const BookDetail({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Imagen del libro
          BookDetailImage(thumbnailUrl: book.imageUrl,),
          SizedBox(height: 16),
          // Título del libro
          Text(
            book.title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 8),
          // Autor del libro
          Text(
            "by ${book.author}",
            style: TextStyle(fontSize: 18, color: Colors.grey[300]), // Color gris claro
          ),
          SizedBox(height: 16),
          // Puntuación del libro
          Text(
            "Rating: ${book.rating}/5",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          SizedBox(height: 16),
          // Resumen del libro
          Text(
            "Resumen:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            book.resumen,
            style: TextStyle(color: Colors.white), // Texto en blanco
          ),
        ],
      ),
    );
  }
}