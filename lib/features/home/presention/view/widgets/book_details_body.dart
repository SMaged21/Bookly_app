import 'package:bookly/features/home/presention/view/widgets/book_list_item.dart';
import 'package:bookly/features/home/presention/view/widgets/custom_book_details_appbar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomBookDetailsAppBar(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .3),
          child: const BookListItem(),
        )
      ],
    );
  }
}
