import 'package:flutter/material.dart';
import 'package:myapp/data/datasource/book_list_datasource.dart';
import 'package:myapp/domain/model/book.dart';

class BookSearchScreen extends StatefulWidget {
  const BookSearchScreen({super.key});

  @override
  State<BookSearchScreen> createState() => _BookSearchScreenState();
}

class _BookSearchScreenState extends State<BookSearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Book> _filteredBooks = getBooks();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Books'),
        backgroundColor: Colors.blue,
        ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0), //Symmetric padding
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _filteredBooks = _search(value);
                });
              },
              decoration: InputDecoration(
                hintText: 'Search by name, author, or ISBN',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _filteredBooks.isEmpty
                  ? const Center(child: Text('No books found.'))
                  : Center(
                      // Center the GridView
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // 2 columns
                          childAspectRatio:
                              1.0, // Adjust aspect ratio as needed
                          crossAxisSpacing: 16, // Spacing between columns
                          mainAxisSpacing: 16, // Spacing between rows
                        ),
                        itemCount: _filteredBooks.length,
                        itemBuilder: (context, index) {
                          final book = _filteredBooks[index];
                          return ListTile(
                            leading: AspectRatio(
                              // Use AspectRatio for image sizing
                              aspectRatio:
                                  1, // Adjust as needed for image aspect ratio
                              child: ClipRRect(
                                // Clip for smooth corners
                                borderRadius: BorderRadius.circular(8.0),
                                child: book.imageUrl.isNotEmpty
                                    ? Image.network(
                                        book.imageUrl,
                                        fit: BoxFit
                                            .cover, // Cover the AspectRatio
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                          return const Icon(Icons.error);
                                        },
                                        loadingBuilder:
                                            (context, child, loadingProgress) {
                                          if (loadingProgress == null)
                                            return child;
                                          return const CircularProgressIndicator();
                                        },
                                      )
                                    : const Icon(Icons.book),
                              ),
                            ),
                            title: Text(book.name,
                                style: const TextStyle(fontSize: 14)),
                            subtitle: Text(book.author,
                                style: const TextStyle(fontSize: 12)),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  List<Book> _search(String query) {
    if (query.isEmpty) return getBooks();
    return getBooks()
        .where((book) =>
                book.name.toLowerCase().contains(query.toLowerCase()) ||
                book.author.toLowerCase().contains(query.toLowerCase())
            // Add ISBN search here if you have ISBN in your Book model
            ).toList();
  }
}
