import 'package:flutter/material.dart';
import 'package:home_food/constants/images.dart';
import 'package:home_food/screens/home/home_widgets/widgets.dart';

class SecondPart extends StatelessWidget {
  const SecondPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(child: DiscountCard()),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    ProductCard(
                      color: Color(0xFFF89A9A),
                      imgName: foodCard1,
                      productName: 'Tenderloin pineapple',
                      price: '\$125.00',
                    ),
                    // Spacer(),
                    SizedBox(height: 8),
                    ProductCard(
                      color: Color(0xFFF4C264),
                      imgName: foodCard2,
                      price: 'Grilled chicken breast',
                      productName: '\$85.00',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Best Meals',
            style: TextStyle(color: Color(0xff022136), fontSize: 20),
          ),
        ],
      ),
    );
  }
}
