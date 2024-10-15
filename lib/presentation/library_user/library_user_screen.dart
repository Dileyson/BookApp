import 'package:flutter/material.dart';
import 'package:myapp/data/datasource/book_list_datasource.dart';
import 'package:myapp/presentation/library_user/widgets/horizontal_book_list.dart';

class LibraryUserScreen extends StatelessWidget {
  const LibraryUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookList = getBooks();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Biblioteca"),
          actions: [
            IconButton(
                onPressed: () => Navigator.pushNamed(context, '/search'),
                icon: const Icon(Icons.search))
          ],
        ),
        
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HorizontalBookList(
                  categoryTitle: 'En progreso',
                  categoryActionText: 'Ver todos',
                  bookList: bookList,
                ),

                

                HorizontalBookList(
                  categoryTitle: 'Leídos',
                  categoryActionText: 'Ver todos',
                  bookList: bookList.reversed.toList(),
                ),

                
                HorizontalBookList(
                  categoryTitle: 'Pendientes',
                  categoryActionText: 'Ver todos',
                  bookList: bookList,
                ),
              ],
            ),
          ),
        ));
  }
}
