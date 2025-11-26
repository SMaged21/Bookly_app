import 'package:bookly/features/home/presention/view/widgets/best_seller_list_item.dart';
import 'package:flutter/material.dart';

class BestSelleListView extends StatelessWidget {
  const BestSelleListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: BestSellerListItem(),
          );
        });
  }
}
