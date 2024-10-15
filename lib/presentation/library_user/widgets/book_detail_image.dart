import 'package:flutter/material.dart';

class BookDetailImage extends StatelessWidget {
  final String thumbnailUrl;

  const BookDetailImage({super.key, required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 270,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          thumbnailUrl.isNotEmpty ? thumbnailUrl : 'https://via.placeholder.com/150', // Imagen predeterminada
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const Center(child: CircularProgressIndicator());
          },
          errorBuilder: (context, error, stackTrace) {
            return const Center(child: Icon(Icons.error, color: Colors.red));
          },
        ),
      ),
    );
  }
}