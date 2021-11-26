import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/constants/styles.dart';
import 'package:home_food/constants/svgs.dart';
import 'package:home_food/shared_widgets/custom_button.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            SvgPicture.asset(dollarSvg),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your current wallet'),
                Text(
                  '12300 points',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF78D878)),
              child: Text(
                'Extra bonuses',
                style: whiteTextStyle.copyWith(fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
