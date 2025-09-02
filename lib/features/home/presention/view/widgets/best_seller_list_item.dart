import 'package:bookly/constents.dart';
import 'package:bookly/core/Utils/assets.dart';
import 'package:bookly/core/Utils/styles.dart';
import 'package:bookly/features/home/presention/view/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BestSellerListItem extends StatelessWidget {
  const BestSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(AssetsData.testImg),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(8)),
              )),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      "Harry Potter and Gilbert Fair",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20
                          .copyWith(fontFamily: kGesectraFine),
                    )),
                const Text(
                  "JK.Rowling",
                  style: Styles.textStyle14,
                ),
                Row(
                  children: [
                    Text(
                      "19.9 \$",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const BookRating(),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 25,
          )
        ],
      ),
    );
  }
}
