import 'package:flutter/material.dart';
import 'package:home_food/screens/billetera/widget/wallet_card.dart';
import 'package:home_food/screens/billetera/widget/win_dialog.dart';
import 'package:home_food/screens/billetera/widget/win_header.dart';

class BilleteraScreen extends StatelessWidget {
  const BilleteraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Stack(
              clipBehavior: Clip.none,
              children: const [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: WinDialog(),
                ),
                // Positioned(top: -50, child: WinHeader()),
                Positioned.fill(
                  top: -50,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                    child: WinHeader(),
                  ),
                ),
              ],
            ),

            // WinHeader(),
          ],
        ),
      ),
    );
  }
}
