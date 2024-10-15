import 'package:flutter/material.dart';
import 'package:myapp/domain/model/book_detail_model.dart';
import 'package:myapp/presentation/library_user/widgets/book_detail.dart';


class BookDetailScreen extends StatelessWidget {
  // Simulamos un libro
  final Book book = Book(
    title: "El Alquimista",
    author: "Paulo Coelho",
    resumen: "Un joven pastor llamado Santiago se embarca en una búsqueda para encontrar su tesoro personal.",
    rating: 4.5,
    imageUrl: "https://images.pexels.com/photos/762687/pexels-photo-762687.jpeg", // Reemplaza con una URL válida
  );

  BookDetailScreen({super.key, required book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: BookDetail(book: book),
    );
  }
}