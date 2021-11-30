import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/constants/images.dart';
import 'package:home_food/constants/svgs.dart';
import 'package:home_food/shared_widgets/circle_image.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleImage(imgName: profilePic),
        const SizedBox(width: 15),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
              colors: [Color(0xffF5B65F), Color(0xffFF9D17)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: const [0.0, 0.1],
              // tileMode: TileMode.mirror,);
            ),
          ),
          child: const Text(
            '500',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const Spacer(),
        SvgPicture.asset(notificationSvg),
        const SizedBox(width: 15),
        SvgPicture.asset(shareSvg),
      ],
    );
  }
}
