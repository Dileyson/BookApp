import 'package:flutter/material.dart';
import 'package:myapp/data/datasource/book_list_datasource.dart';
import 'package:myapp/domain/model/book.dart'; // Import your Book model


class BookSearchScreen extends StatefulWidget {
  const BookSearchScreen({super.key});

  @override
  State<BookSearchScreen> createState() => _BookSearchScreenState();
}

class _BookSearchScreenState extends State<BookSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Book> _filteredBooks = getBooks(); // Start with all books

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search Books')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _filteredBooks = _search(value);
                });
              },
              decoration: const InputDecoration(hintText: 'Search by name, author, or ISBN'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredBooks.length,
              itemBuilder: (context, index) {
                final book = _filteredBooks[index];
                return ListTile(
                  title: Text(book.name),
                  subtitle: Text(book.author),
                  leading: Image.network(book.imageUrl),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Book> _search(String query) {
    if (query.isEmpty) return getBooks(); // Show all if empty
    return getBooks().where((book) =>
        book.name.toLowerCase().contains(query.toLowerCase()) ||
        book.author.toLowerCase().contains(query.toLowerCase())
        // Add ISBN search here if you have ISBN in your Book model
    ).toList();
  }
}