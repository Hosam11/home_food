import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:home_food/constants/styles.dart';

class InvitationCode extends StatelessWidget {
  const InvitationCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: const Radius.circular(16),
        strokeWidth: 3,
        dashPattern: const [20, 10],
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'Your invitation code',
                    style: whiteTextStyle.copyWith(fontSize: 10),
                  ),
                  Text(
                    'FLUTTER2021',
                    style: whiteTextStyle.copyWith(fontSize: 26),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: 2,
                  height: 30,
                  child: Container(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.copy, color: Colors.white, size: 16),
                  const SizedBox(width: 8),
                  Text('COPY\nCODE',
                      style: whiteTextStyle.copyWith(fontSize: 9)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
