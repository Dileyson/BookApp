import 'package:flutter/material.dart';

class BookCategory extends StatelessWidget {
  final String? categoryTitle;
  final String? categoryActionText;

  const BookCategory({super.key, this.categoryTitle, this.categoryActionText});

  @override
  Widget build(BuildContext context) {
    final title = Theme.of(context).textTheme.titleLarge;

    return Container(
      // padding para el espaciado de la parte superior
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
      children: [
        if (categoryTitle != null) 
        Text(
          categoryTitle!,
          style: title
        ),
        const Spacer(),
        if (categoryActionText != null)
          FilledButton(onPressed: () {},
          style: const ButtonStyle(visualDensity: VisualDensity.compact), 
          child: Text(categoryActionText!),)
      ],
      )
    );
  }
}
