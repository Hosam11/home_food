import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/constants/images.dart';
import 'package:home_food/constants/styles.dart';
import 'package:home_food/constants/svgs.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xFFF1A344),
          width: 3,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                '* Restrictions apply *',
                style: whiteTextStyle,
              ),
              // const Spacer(),
              CircleAvatar(
                backgroundColor: Color(0xFF2E2B79),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 8.0, bottom: 8.0),
                  child: SvgPicture.asset(emojy),
                ),
              ),
            ],
          ),
          Image.asset(food1)
        ],
      ),
    );
  }
}
