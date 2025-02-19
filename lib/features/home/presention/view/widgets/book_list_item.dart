import 'package:bookly/core/Utils/assets.dart';
import 'package:flutter/material.dart';

class BoookListItem extends StatelessWidget {
  const BoookListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: AssetImage(AssetsData.testImg), fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }
}
