import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({Key? key, required this.imgName}) : super(key: key);
  final String imgName;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        const SizedBox(width: 70, height: 70),
        Container(
          width: 35,
          height: 35,
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(29),
            ),
          ),
        ),
        Positioned(
          left: 5,
          bottom: 5,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(imgName),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
