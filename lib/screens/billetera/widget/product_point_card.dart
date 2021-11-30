import 'package:flutter/material.dart';
import 'package:home_food/constants/images.dart';
import 'package:home_food/constants/styles.dart';

class ProductPointCard extends StatelessWidget {
  const ProductPointCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Card(
          color: const Color(0xffF4C264),
          // color: Colors.red,
          child: Padding(
            padding: const EdgeInsets.only(
                top: 50.0, left: 25, right: 25, bottom: 16),
            child: Column(
              children: [
                const SizedBox(height: 8),
                const Text(
                  'Lomo en piña',
                  style: whiteTextStyle,
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [Color(0xffF5B65F), Color(0xffFF9D17)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // stops: const [0.0, 0.1],
                        // tileMode: TileMode.mirror,);
                      )),
                  child: const Text(
                    '1300 points',
                    style: whiteTextStyle,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned.fill(top: -120, child: Image.asset(foodCard1))
      ],
    );
  }
}
