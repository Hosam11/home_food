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
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color(0xFFF1A344),
          width: 3,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Text(
                  '* Restrictions apply *',
                  style: whiteTextStyle.copyWith(fontSize: 10),
                ),
              ),
              // const Spacer(),
              CircleAvatar(
                backgroundColor: const Color(0xFF2E2B79),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 8.0, bottom: 8.0),
                  child: SvgPicture.asset(emojy),
                ),
              ),
            ],
          ),
          Center(child: Image.asset(food1)),
          const SizedBox(height: 24),
          const Text(
            'In meow everything is better',
            style: TextStyle(
              color: Color(0xFF859BAA),
              fontSize: 9,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            '20% Discount',
            style: TextStyle(color: Color(0xff022136), fontSize: 21),
          ),
          const Text(
            'In salads and salmon',
            style: TextStyle(
              color: Color(0xff022136),
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
