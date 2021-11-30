import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: const [
        Text(
          '• Of the day',
          style: TextStyle(
            color: Color(0xFFFDA020),
          ),
        ),
        SizedBox(width: 30),
        Text(
          'Meals',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        SizedBox(width: 30),
        Text(
          'Breakfasts',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
