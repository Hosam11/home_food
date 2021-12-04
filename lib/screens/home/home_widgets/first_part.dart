import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_food/clipper/custom_clip_path.dart';
import 'package:home_food/constants/svgs.dart';

import 'package:flutter/material.dart';
import 'package:home_food/screens/home/home_widgets/widgets.dart';

class FirstPart extends StatelessWidget {
  const FirstPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      key: UniqueKey(),
      child: Container(
        color: const Color(0xFF0E294E),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25.0,
            top: 25,
            bottom: 200,
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 25.0, bottom: 16),
                child: HeaderWidget(),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // hello
                        Text(
                          'Hello, Diana',
                          style:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 30),
                        Container(
                          width: 80,
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xFFFDA124),
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Earn points with your purchases',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(height: 60),
                        const CategoryRow()
                      ],
                    ),
                  ),
                  // 2 imgs
                  Expanded(
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Positioned(
                          right: -20,
                          child: SvgPicture.asset(
                            pinkLeafSvg,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 90, left: 20),
                          child: SvgPicture.asset(
                            greenLeafSvg,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      clipper: CustomClipPath(),
    );
  }
}
