import 'package:flutter/material.dart';
import 'package:home_food/constants/styles.dart';
import 'package:home_food/screens/shared/widgets/z_shared_screen_widgets.dart';

class RocketDialogContent extends StatelessWidget {
  const RocketDialogContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Share with 10 friends \nAnd get bonus',
            textAlign: TextAlign.center,
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'Help us to continue growing, share the application with \n Your friends and receive up to 20% discount on \nHouse products 😍😍',
              textAlign: TextAlign.center,
              style: whiteTextStyle,
            ),
          ),
        ),
        const SizedBox(height: 20),
        const InvitationCode(),
        const SizedBox(height: 45),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(39),
            gradient: const LinearGradient(
              colors: [Color(0xffF5B65F), Color(0xffFF9D17)],
            ),
          ),
          child: Text('Share', style: whiteTextStyle.copyWith(fontSize: 20)),
        ),
        const SizedBox(height: 55),
      ],
    );
  }
}
