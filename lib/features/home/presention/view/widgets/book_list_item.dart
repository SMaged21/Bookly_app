import 'package:bookly/core/Utils/assets.dart';
import 'package:flutter/material.dart';

class BookListItem extends StatelessWidget {
  const BookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage(AssetsData.testImg), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
