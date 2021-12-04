import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/constants/styles.dart';
import 'package:home_food/constants/svgs.dart';
import 'package:home_food/screens/shared/widgets/z_shared_screen_widgets.dart';

const imgHeight = 300.0;

class RocketDialog extends StatelessWidget {
  const RocketDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 40),
            // height: 400,
            child: const Padding(
              padding: EdgeInsets.only(top: imgHeight),
              child: RocketDialogContent(),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF45108A).withOpacity(.9),
                  const Color(0xFF45108A).withOpacity(.9),
                  const Color(0xFF3D065F).withOpacity(.9),
                  const Color(0xFF472EBC).withOpacity(.9),
                  const Color(0xFF10054D).withOpacity(.9),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60.0),
                child: SvgPicture.asset(
                  rokectSvg,
                  height: imgHeight,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 70, left: 40),
            child: Row(
              children: [
                const Icon(Icons.person, color: Color(0xffFCA42C)),
                Text(
                  '10',
                  style: whiteTextStyle.copyWith(fontSize: 20),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
