import 'package:bookly/features/home/presention/view/widgets/book_list_item.dart';
import 'package:bookly/features/home/presention/view/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomAppBar(), BoookListItem()],
    );
  }
}
