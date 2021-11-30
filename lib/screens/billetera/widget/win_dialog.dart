import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:home_food/constants/images.dart';
import 'package:home_food/screens/billetera/widget/product_point_card.dart';
import 'package:home_food/screens/billetera/widget/profile_card.dart';
import 'package:home_food/screens/billetera/widget/wallet_card.dart';

class WinDialog extends StatelessWidget {
  const WinDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.grey[200],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const ProfileCard(),
            const SizedBox(height: 16),
            const WalletCard(),
            const SizedBox(height: 8),
            Text(
              'Redeem your points',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Wrap(
                    // crossAxisAlignment: WrapCrossAlignment.center,
                    alignment: WrapAlignment.spaceEvenly,
                    // runAlignment: WrapAlignment.spaceBetween,
                    children: const [
                      ProductPointCard(),
                      // ProductPointCard(),
                      ProductPointCard(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.asset(foodBanner)
          ],
        ),
      ),
    );
  }
}
