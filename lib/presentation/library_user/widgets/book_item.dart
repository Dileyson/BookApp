import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final String image;
  final String? title;
  final String? author;

  const BookItem({super.key, required this.image, this.title, this.author});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            //width: 120,
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                image,
                fit: BoxFit
                    .cover, //Revisar para que la imagen quede mas larga que ancha
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress != null) {
                    return const Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: CircularProgressIndicator(),
                        )
                      );
                  }
                  return child;
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10
            ),
            SizedBox(
              width: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                title ?? '',
                maxLines: 2,
                style: theme.titleMedium,
                ),
              ),
            ),
            SizedBox(
              width: 120,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  author ?? '',
                  maxLines: 2,
                  style: theme.titleMedium
                  ),
              ),
            ),
        ],
      ),
    );
  }
}
