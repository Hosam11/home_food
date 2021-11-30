import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/constants/styles.dart';
import 'package:home_food/constants/svgs.dart';

class SharedScreen extends StatelessWidget {
  const SharedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF45108A),
                    Color(0xFF45108A),
                    Color(0xFF3D065F),
                    Color(0xFF472EBC),
                    Color(0xFF10054D),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // stops: const [0.0, 0.1, 0.1, 0.1, 0.0],
                  // tileMode: TileMode.mirror,);
                ),
              ),
              child: Column(
                children: [
                  SvgPicture.asset(rokectSvg),
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
                  const SizedBox(height: 16),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff29B14E),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all()),
                    child: Column(
                      children: const [
                        Text(
                          'Your invitation code',
                          style: whiteTextStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
