import 'package:flutter/material.dart';
import 'package:myapp/domain/model/book.dart';
import 'package:myapp/presentation/library_user/widgets/book_category.dart';
import 'package:myapp/presentation/library_user/widgets/book_item.dart';

class HorizontalBookList extends StatelessWidget {
  final String categoryTitle;
  final String categoryActionText;
  final List<Book> bookList;

  const HorizontalBookList(
      {super.key,
      required this.categoryTitle,
      required this.categoryActionText, 
      required this.bookList});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      BookCategory(
        categoryTitle: categoryTitle,
        categoryActionText: categoryActionText,
      ),
      const SizedBox(
        height: 12,
      ),
      Container(
        height: 250,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: bookList.length,
          itemBuilder: (context, index) {
          final book = bookList[index];
          return BookItem(
            image: book.imageUrl,
            title: book.name,
            author: book.author,
          );
        },),
      )
    ]);
  }
}
